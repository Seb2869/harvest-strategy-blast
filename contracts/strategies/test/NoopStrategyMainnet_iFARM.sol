//SPDX-License-Identifier: Unlicense
pragma solidity 0.6.12;

import "../../base/noop/NoopStrategyUpgradeable.sol";

contract NoopStrategyMainnet_iFARM is NoopStrategyUpgradeable {

  constructor() public {}

  function initializeStrategy(
    address _storage,
    address _vault
  ) public initializer {
    address underlying = address(0x20c9F9633396298b618c2EaC35c1b9746380700A);
    NoopStrategyUpgradeable.initializeBaseStrategy(
      _storage,
      underlying,
      _vault
    );
  }
}
