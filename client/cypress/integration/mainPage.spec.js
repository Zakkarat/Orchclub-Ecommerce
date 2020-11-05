context('Main page actions', () => {
    beforeEach(() => {
        cy.visit('localhost:3000/')
    })

    it('checks if there is orch card', () => {
        cy.get('.orch-card').first().click();
        cy.get('.card-title').should('contain', 'Aerides lawrenciae var. punctata');
    })

    it('checks if categories are working', () => {
        cy.get('.carousel__slide').first().next().click();
        cy.wait(500);
        cy.get('.orch-card').first().click();
        cy.get('.card-title').should('contain', 'Aerangis articulata');
    })

    it('checks filters', () => {
        cy.get('.search').first().type('vanda');
        cy.get('.btn-white').click();
        cy.get('.navbar-nav').last().children().children().first().get('.search').last().clear().type('1000');
        cy.get('.custom-select').first().select("B/S");
        cy.get('.custom-select').last().select('Алфавит ↑')
        cy.get('.btn-black').last().click();
        cy.get('.orch-card').first().click();
        cy.get('.card-title').should('contain', 'Ascocenda Fuchs Harvest Moon x Chaopaya Sapphire) x Vanda Bitz\'s');
    })
})