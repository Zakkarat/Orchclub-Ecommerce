context('Main page actions', () => {
    beforeEach(() => {
        cy.visit('localhost:3000/')
    })

    it('checks if login performs', () => {
        cy.get('.dropdown-toggle').click();
        cy.get('.dropdown-item').first().click();
        cy.get('.form-control').first().type('Merilend');
        cy.get('.form-control').last().type('Yakuza');
        cy.get('.btn-black').click();
        cy.get('.dropdown-toggle').click();
        cy.get('.dropdown-item').first().should('contain', 'Корзина')
    })

    it('checks if order performs', () => {
        cy.get('.dropdown-toggle').click();
        cy.get('.dropdown-item').first().click();
        cy.get('.form-control').first().type('Merilend');
        cy.get('.form-control').last().type('Yakuza');
        cy.get('.btn-black').click();
        cy.get('.orch-card').first().click();
        cy.get('.card-title').should('contain', 'Aerides lawrenciae var. punctata');
        cy.wait(1000);
        cy.get('.width-btn').last().click();
        cy.wait(500);
        cy.get('.btn-black').last().click();
        cy.visit('localhost:3000/');
        cy.get('.dropdown-toggle').click();
        cy.get('.dropdown-item').first().click();
        cy.get('.btn-black').last().click();
        cy.get('.custom-select').last().select('Заберу сам')
        cy.get('.custom-select').last().select('Адрес 1')
        cy.get('.custom-select').last().select('Оплата за реквизитами')
        cy.get('.btn-black').last().click();
        cy.get('.pg-card__flow--sum').children().first().should('contain', '754.00 грн')
    })
})
