Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73D36265FD9
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 14:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725949AbgIKMxr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 08:53:47 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:40956 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725920AbgIKMvU (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 11 Sep 2020 08:51:20 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id E6ECB2073B;
        Fri, 11 Sep 2020 14:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1599828647;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=82BtCr1BIfXgeDl5GXv1rw/fP+DslEOiz8/6ePx0tO8=;
        b=UIOFBFd2nSIIZr+VOEBljBZTefEvhs6PwXX/6SIywkqd/bhD/7EQBYIv0cpz8R/oRm8vGX
        q0OvHXUtMM0wO6vyPBXyurUwVwykVNIlYydM/jOpiRkXsED374eHWsO5QcPBiYrQmfvK3v
        wwbP/Emr0Oi3j5qDbu5Fx3bYV2FTtvqNd+/1vi8FfbvuNUOmGz2ciAA84qktoP/aZhT8S7
        21ZMja7QhVX4TioSvXw7ihiJYgvhp2wzIQu7tZMdn6AJcnJlsS4Sb9/2UAATHaOdgfdxPS
        jA9hoG3kMuKV5V5Si5NtO6OdbFdppSVnqEX8XpEhwuEBhCdiCYwUMijSqDNpiA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Fri, 11 Sep
 2020 14:50:47 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Fri, 11 Sep 2020 14:50:47 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: AW: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
Thread-Topic: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
Thread-Index: AQHWh7eCoX2qxL9OEkaYnOmAJnp5MKljZJ9j
Date:   Fri, 11 Sep 2020 12:50:47 +0000
Message-ID: <00ae0174f35241efa962286b9247c590@bfs.de>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>,<20200910211344.3562-13-colomar.6.4.3@gmail.com>
In-Reply-To: <20200910211344.3562-13-colomar.6.4.3@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-as-result: No-10--0.239100-5.000000
x-tmase-matchedrid: WWTMasqpueEI9V8p1Mx66XbspjK6JP6qDZxgL2y+vXeRmBpkPchPVWhk
        SwpykoqVxTsa1zsKwGCfw/TEAf8XTEfX0Ayg3UN3lNomdZyIWKIBDya2JbH/+rqmXM36L3kB6f0
        gaty5G7GXoanwS/0YwxfSrzWwageNLGmmJTL2jhwD2WXLXdz+ATCeYh/W8m8dmyiLZetSf8mZMP
        CnTMzfOiq2rl3dzGQ1K7ZhaGn+KBbGTvO0edBGBrShWvgR6aJXJcNhWMWLHUv6M/DbU1xGLVGaw
        EjxIvbJERzzV5VclxnkTB6XPPm2NbZ4ys4g32NHW96NbUtxv39wKbJm8PBDLa3lqFG8MgYtra3V
        Vcd6EV7L9ApLJriTv0MMprcbiest
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--0.239100-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-snts-smtp: B294097DC822586E46F0A54352DFCF7B02EB2CD9229A448E42B646A1F205ABC52000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=0.02
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [0.02 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         BAYES_SPAM(0.02)[51.18%];
         TO_DN_SOME(0.00)[];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-0.848];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

BUFLEN should  be remove completely or stay

jm2c
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Alejandro Colomar [colomar.6.4.3@gmail.com]
Gesendet: Donnerstag, 10. September 2020 23:13
An: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org; linux-kernel@vger.kernel.org; Alejandro Colo=
mar
Betreff: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size (inste=
ad of hardcoding macro name)

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getgrent_r.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
index 81d81a851..76deec370 100644
--- a/man3/getgrent_r.3
+++ b/man3/getgrent_r.3
@@ -186,7 +186,7 @@ main(void)

     setgrent();
     while (1) {
-        i =3D getgrent_r(&grp, buf, BUFLEN, &grpp);
+        i =3D getgrent_r(&grp, buf, sizeof(buf), &grpp);
         if (i)
             break;
         printf("%s (%d):", grpp\->gr_name, grpp\->gr_gid);
--
2.28.0

