/*
 * Copyright © 2013-2016 The Nxt Core Developers.
 * Copyright © 2016-2020 Jelurida IP B.V.
 *
 * See the LICENSE.txt file at the top-level directory of this distribution
 * for licensing information.
 *
 * Unless otherwise agreed in a custom licensing agreement with Jelurida B.V.,
 * no part of this software, including this file, may be copied, modified,
 * propagated, or distributed except according to the terms contained in the
 * LICENSE.txt file.
 *
 * Removal or modification of this copyright notice is prohibited.
 *
 */

package nxt;

import nxt.crypto.CryptoSuite;
import nxt.http.APIProxyServletTest;
import nxt.http.APIRemoteConnectorTest;
import nxt.http.MockedRequestTest;
import nxt.peer.HallmarkTest;
import nxt.util.UtilSuite;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({
        UtilSuite.class,
        HallmarkTest.class,
        APIProxyServletTest.class,
        APIRemoteConnectorTest.class,
        MockedRequestTest.class,
        CryptoSuite.class,
})
public class NoDbTestSuite {
}
