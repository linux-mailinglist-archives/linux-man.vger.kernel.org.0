Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C895298D04
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 13:44:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1775373AbgJZMoL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 08:44:11 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:39198 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1775369AbgJZMoL (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 26 Oct 2020 08:44:11 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 4A6BD20145
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 13:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1603716249;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=dTsvN22iKLBV59rJwMJBZOiZc/8nIHxI++n8Nht0ocY=;
        b=Ly6w9qkP+ZObNvQaL1vSfK31FRZiKhUzFQNRDW34S+BrNUTwSbCqEIdxF0C2LzO5KOtMa2
        EXp7Ld9OsuOag/muQA1EHX4O21CNIVnSgKjEX9ULGDb89vpk+3NJz8xbgecyCax0CCSLq2
        FD6V8zkgeOE6Wrc02h6ogMiTwVw1hXxpN+f9EmdyFrMovuQ4zaBZZLvbByATIhLGZ+2L8h
        9Wl+Bx9f6oGzAGjf2fs5+c2FNS+jkK7AImh2wZuKikV1OeBg5eA8rUL6ozL1AwQUC+c0/D
        APxuAk4ea/QMKp7+ksUPsYWpMcquFglkxPo6aVywTYcKeH5CEg7JNyMdAQFqEQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Mon, 26 Oct
 2020 13:44:08 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2106.002; Mon, 26 Oct 2020 13:44:08 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: test - please ignore
Thread-Topic: test - please ignore
Thread-Index: AQHWq5WTpPfc2zes3ku60upkRClIZA==
Date:   Mon, 26 Oct 2020 12:44:08 +0000
Message-ID: <2895dce8fd574a2f8e7ea251bc6d3d38@bfs.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25748.007
x-tm-as-result: No-10--2.258900-5.000000
x-tmase-matchedrid: QAoQN8i+qe4Lg19jSn5UYxvgzEPRJaDEWw/S0HB7eoMTiSW9r3PknItp
        XG+2w3nspw00Pm81G4FftuJwrFEhTQ0nL7ev9Tv6/PPMIVQN/dXemP6O0XJrfuTCMddcL/gjsjv
        NV98mpPP8MzFj7/FJkkgODat+3+Wfr0oBxYO9pbJa0KauJKMo7bz9k5GRjAslN1pRFGSs9tESqY
        jk3fnDyLppqnzBg9PkSY5jHiC5roY=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--2.258900-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25748.007
x-tm-snts-smtp: 218A0790E39A69623A6E61559165262E82B1AF86434A5D4A8E8FBFDE86E5ED542000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=0.00
Authentication-Results: mx02-sz.bfs.de;
        none
X-Spamd-Result: default: False [0.00 / 7.00];
         ARC_NA(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_ONE(0.00)[1];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-0.211];
         TO_DN_EQ_ADDR_ALL(0.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[]
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

test=
