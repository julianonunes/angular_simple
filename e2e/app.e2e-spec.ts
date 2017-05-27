import { SimplePage } from './app.po';

describe('simple App', () => {
  let page: SimplePage;

  beforeEach(() => {
    page = new SimplePage();
  });

  it('should display welcome message', done => {
    page.navigateTo();
    page.getParagraphText()
      .then(msg => expect(msg).toEqual('Welcome to app!!'))
      .then(done, done.fail);
  });
});
