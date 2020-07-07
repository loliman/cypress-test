describe('atos.net', () => {
    it('Visit atos.net and search for "test"', () => {
      cy.visit("https://atos.net/de/atos-blog")
      cy.get("#cp_accept").click()
      cy.get("#form__global-search button").click()
      cy.get("#s").type("test{enter}");
      cy.get("#gs-content .gs-results").contains('Results:')
    })
  })