import {connect} from 'react-redux';
import {selectAllPokemon} from '../../reducers/selectors';
import { receiveAllPokemon } from '../../actions/pokemon_actions';


const mapStateToProps = state => ({
  // piece of state that container subscribes to
  pokemon: selectAllPokemon(state)
});

const mapDispatchToProps = dispatch => ({
  requestAllPokemon: pokemon => dispatch(receiveAllPokemon(pokemon))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PokemonIndex);