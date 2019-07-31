export {colors, globalButton, globalCard, titleCard, snackbar };

const colors = {
    primary: '#f8f8f8',
    secundary: '#b4c959',
    navBarText: '#555',
    navBarButtonBackground: '#e7e7e7',
    text: 'black',
    cancel: '#FF8A65'
}

const globalCard = {
    marginLeft: '7%',
    marginRight: '7%',
    marginTop: 30,
    fontFamily: 'ProximaNovaRegular, roboto, sans-serif',
    padding: 35,
};

const globalButton = {
    marginTop: 10,
    backgroundColor: colors.secundary,
    "&:hover": {
        backgroundColor: colors.secundary,
    }
};

const titleCard = {
    textAlign: 'Left',
    fontWeight: 'normal'
};

const snackbar = {
    marginBottom: 20
};