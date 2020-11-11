Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0785B2AE500
	for <lists+linux-man@lfdr.de>; Wed, 11 Nov 2020 01:43:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732052AbgKKAnF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Nov 2020 19:43:05 -0500
Received: from mout.gmx.net ([212.227.17.20]:52709 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727275AbgKKAnB (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 10 Nov 2020 19:43:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1605055379;
        bh=O04ydfee4ukTyETSCBFBMjKtlN/zT9QuTDJQMo7WBuY=;
        h=X-UI-Sender-Class:To:From:Subject:Date;
        b=JeomC1HCph/ijK1UnJRJELrnBqRRdkj7Se0PZgf9oQU3iQvwb66OFVwdAHyJ5QK7y
         46GdtCb/ZHUM/mEBHWDkf/EDxmy4XXYL0vXYgeLQBBl5qMzh75HWw/67OtwwC18Zri
         wsR518xIPQBw3JMgQD0+nsqxlZ1qogMOJyPmeD3A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([178.202.41.135]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Ml6m4-1jtfNH0fro-00lTb1; Wed, 11
 Nov 2020 01:42:59 +0100
To:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: sigaction.2: clarification for SA_NODEFER needed
Autocrypt: addr=xypron.glpk@gmx.de; prefer-encrypt=mutual; keydata=
 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 Eg==
Message-ID: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
Date:   Wed, 11 Nov 2020 01:42:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:WYnWZzpOW7fGAyOIKhtYSuQLCIpWjOLIk4R+oSN+LgIzsrSjCfr
 lJna2/bgvFLnqcWNbUf0/c7Qlqz+GV5EFAZ+t86UK3INkq8lu0hiHjvtNYHQpVY/VZt6gPW
 TNHSwiI8FCgavzE7BOTkiGjimWpulB2wRR8I4PjnI+azs+xZGYnDpiwnKk3VW1ypoVFO1N0
 U0S22kMMW998hvPaY2VGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GtuabmNTmXg=:xGLJhhDAYaUEz+ppnBxeis
 7a8RhrmQgLEp4Iz+RZTtbgNqac6KjktaZj3Pc2WnQPePH08OORBO9vlZPuiLg6I4vHv+dlaPw
 U5hV0Vw1VFSUzdN4evTmuAZJN2Kils+pKBwnlA6MfqLt5TgZyj+XtDV1649BOJKCMvLHg8TOD
 d0bUKW3qt1XteanpACyMrUOl57PQ7+YJyGBScWp1mGDYBlPAWFzOUMjQkMwuIprdGee8QOoi4
 4YiGqacUXEZ55ynL3U/RUBjexioYBI5c2EC6CpBZsqCox5QvKI9Ck2BbE+N5NhPIeRo670pt8
 KYVbvlvVTqw61Va2qN8bTn8IUCOaUaq9OJg8FozZ1t9LZKR+iZ5pa1GFSxPlIDgGWFELAvdwI
 I0ba+nqIbDgsNr0pinGKny3XbLobS46ugSKD7Q//nkODBeDJZmKApBruLIQs0e8GtlMoOAsH+
 JdustWThqZmzQlhhpjqksvXtH2M1sPvmBLbF+mOvtPWVK+eZctEvTFXtnwiwnOhcVexb+4Yik
 ph3ijJdQmfy6ufYFjO8efOkTwyujg6+W5a8Q5IKjxdv28+gnyUkB8snHiKkA8vOauIR4Mjs13
 kurlfKVrqkriULgfTyoJky6jMJ946oVHQJ52nBkxTAGrFQTQqgMmfbwpT3hVAOw2ASAUrOJAi
 +x3g/deF80TFHEENBGyU4S4Z6oH1/Xsa596Xp1HqjoXRp8ihzarURUYfjbnj5J2zB4oPBPhfb
 quKZRiSzu42gQJbfX9pCS139FkoCq5WFygxILtzVJgyQNJGKudwgR8WKqmP+jeYeGObHqZhKF
 OeNLEL1o11RIZ7bGBKPRTgYGLdUP5V9JU7+akkQfVj2YH3sgg/70eyugaa7HCaL6kORptwqUG
 DSn1RqcRC+7rv+2cwf/w==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

I have been writing a handler for SIGILL and SIGSEGV which restarts the
program using execv() if an exception occurs. The handler never returns.

From the description of SA_NODEFER it was not evident that even if the
process is restarted with execv() the signal remains masked if
SA_NODEFER is not set as a flag.

It think this behavior deserves mentioning on the sigaction.2 manpage, e.g.

"Do not prevent the signal from being received from within its own
signal handler. A signal handler call is not terminated by calling
execv() as the pending signal property is inherited by the new process."

On the signal.7 manpage there is a paragraph "Signal mask and pending
signals". Here pending signals are mentioned. There is a sentence
"Between the time when it is generated and when it is delivered a signal
is said to be pending."

To me "delivered" means the instance when the signal handler is called
and not the instance when the signal handler returns. So said sentence
should be reworked, e.g.

"Between the time when it is generated and when the signal handler
returns a signal is said to be pending."

Best regards

Heinrich
