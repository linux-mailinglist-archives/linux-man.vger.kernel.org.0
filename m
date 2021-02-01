Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88FF030A658
	for <lists+linux-man@lfdr.de>; Mon,  1 Feb 2021 12:20:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232508AbhBALSV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Feb 2021 06:18:21 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:45833 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233117AbhBALSO (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 1 Feb 2021 06:18:14 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id CE079205D2
        for <linux-man@vger.kernel.org>; Mon,  1 Feb 2021 12:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1612178251;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=ea1Kc48Sl97+5C8MuHU7BzO8nXBY5w/MdhDZHiHiabs=;
        b=KbpQXKimpcPMcHkOF9+r6t/vjOamttochStI3Avj6IFyT53o8joF2dmj14dUXQd/QZiUFx
        Q2/unDCNfupt2lJk1kKnv0+MV48PVnu0cPnE05H+NKGtTJxhH64UMRNnNBZXt7sE7Bb2VN
        FjzaqRPdA7xKPKXuzy3eZauVpXlVH3/Hv8kHmO7Dkp0NwtO+VNgIu9gPaTDZp8LdBH6y2D
        UDQ8Je6Ll1QqhQtLWJQQGF48Tt8dN9cAVYtPKN/gfCs9GtFar4KJ60rqOO5RPQyUhnMHpn
        IDu8hA0PGxineNymI2jBn1Sv4Kkuy7WfTGfmtsgItbvs2BAL1yKBFfpA/gUiNQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Mon, 1 Feb 2021
 12:17:31 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Mon, 1 Feb 2021 12:17:31 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: rfc: free and errno
Thread-Topic: free and errno
Thread-Index: AQHW+IsMgJOFEKtUwUGC8pPl35sq5Q==
Date:   Mon, 1 Feb 2021 11:17:31 +0000
Message-ID: <2ea085f2674543b1a1fb41702bc959c7@bfs.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-as-result: No-10-0.887100-5.000000
x-tmase-matchedrid: NhVFA49szMjRubRCcrbc5pzEHTUOuMX33dCmvEa6IiEIhX6eoWEDQKeB
        ffPJGMutQIeEbfRcooZrdr9ijhczXbqUgEs+NGTpiVJZi91I9JgGchEhVwJY3+J4ZAtEhpMk1jq
        f1r9/odYVtSBxd0PdMd2tPNcftV7DXHEPHmpuRH2DGx/OQ1GV8mrz/G/ZSbVq+gtHj7OwNO1J4M
        CrOTno54hb9KV7H7+vdkISEke8vgTDNkBsmp2tGof6gECd8J4C63Lr8yBg0wD+Ao+N/VDfhQ9MB
        ilymhi/QaKIKio0jPdR4Hu8donwhAMWN/+WUfmr3iATAY04Upzkjdulog6XmkErxBDnvKwtVcr2
        04P67pw=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10-0.887100-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-snts-smtp: 3BCCAF653845F18E4273F7321BF67AA2CB179EBCE27C81A4AAC9E06456DBA4FB2000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spam-Status: No, score=-0.00
X-Spamd-Result: default: False [-0.00 / 7.00];
         ARC_NA(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_ONE(0.00)[1];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         NEURAL_HAM(-0.00)[-1.000];
         TO_DN_EQ_ADDR_ALL(0.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.00)[16.21%]
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi List

free() is generaly assumed not to modify errno.=20

Lately there was a bugfix posting on the busybox mailing list, because:

"musl libc's mallocing free() may modify errno if kernel does not support
MADV_FREE which causes echo to echo with error when it shouldn't."

In future  it seems that POSIX with require free() not to change errno.

after much soul searching i have still no idea if that should be documented=
 in
the free(3) man page. Any comments ?

re,
 wh
