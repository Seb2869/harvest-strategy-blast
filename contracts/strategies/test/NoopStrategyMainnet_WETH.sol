//SPDX-License-Identifier: Unlicense
pragma solidity 0.6.12;

import "../../base/noop/NoopStrategyUpgradeable.sol";

contract NoopStrategyMainnet_WETH is NoopStrategyUpgradeable {

  constructor() public {}

  function initializeStrategy(
    address _storage,
    address _vault
  ) public initializer {
    address underlying = address(0x4300000000000000000000000000000000000004);
    NoopStrategyUpgradeable.initializeBaseStrategy(
      _storage,
      underlying,
      _vault
    );
  }
}
