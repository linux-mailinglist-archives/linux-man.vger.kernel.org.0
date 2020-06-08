Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55CDB1F1979
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 14:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729002AbgFHM6c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 08:58:32 -0400
Received: from mx01-muc.bfs.de ([193.174.230.67]:37370 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728472AbgFHM6c (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 8 Jun 2020 08:58:32 -0400
X-Greylist: delayed 458 seconds by postgrey-1.27 at vger.kernel.org; Mon, 08 Jun 2020 08:58:31 EDT
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id 1661420346;
        Mon,  8 Jun 2020 14:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1591620652;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HFy4Fu1TTgumsHBIU3Gs+bPtI6CP9qvkMvVyzmTlBtM=;
        b=TZiLBIPwLt3cEfNhfx7InwqBKJsMKeYkdBUKe1yQdYGcBI/bsZRxkKq6XFwTwd5MSrtPoz
        MYKnVP6vozF/nGmGzi1Ii2Qfg2QE4cUe2hkl/zjTbxxhnp7l5u/8Bq3p+9l6tSzITKXUjQ
        jecPcnVJocQYKr2T8fmedQgf6+NP84zGZvsgmdV1FYxve5fb4WEKZ3HDEqQHSi3FUIxSBg
        Rs8wKyQUDP03Pd4CkJ5FcXE9A1lfGH+BHDr+bZJyr9KsM82ThgRP+w4zCytq+LcUTaC+Fl
        GXm5rNBmfbY3n5zUG5fpSo5V9VG4b4apnSWydmvOj93boRytY9jnCcFDSS37wA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 8 Jun 2020
 14:50:51 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Mon, 8 Jun 2020 14:50:51 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Jakub Wilk <jwilk@jwilk.net>
CC:     John Marshall <John.W.Marshall@glasgow.ac.uk>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: AW: [patch] random.3: wfix: RAND_MAX is for rand(3)
Thread-Topic: AW: [patch] random.3: wfix: RAND_MAX is for rand(3)
Thread-Index: AQHWPYSXs4CUHQyQf0i9Em/+EFgdCqjOjqei///ikICAADmeRQ==
Date:   Mon, 8 Jun 2020 12:50:51 +0000
Message-ID: <1113d0a16dab434089eae4a80bf9674e@bfs.de>
References: <02185B3C-F6E5-4674-BB34-E549E04C5B37@glasgow.ac.uk>
 <627c601ec03b4da9b1ce98ee0e61a6ba@bfs.de>
 <20200608110416.GA21314@Johns-MacBook-Pro.local>
 <f653054ab6ae480b8286386c432cf8b9@bfs.de>,<20200608112101.fuilahvdbacmdah6@jwilk.net>
In-Reply-To: <20200608112101.fuilahvdbacmdah6@jwilk.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=4.77
X-Spam-Level: ****
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spamd-Result: default: False [4.77 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RSPAMD_URIBL(4.50)[jwilk.net:email];
         TO_DN_SOME(0.00)[];
         BAYES_HAM(-1.23)[89.43%];
         DKIM_SIGNED(0.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         SUSPICIOUS_RECIPS(1.50)[];
         FREEMAIL_CC(0.00)[glasgow.ac.uk,gmail.com,vger.kernel.org]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

misunderstanding,

the page random(3) says (in my version)
"range from 0 to 2**31-1." it does not mention
rand_max, INT32_MAX or some other constant only the numerical value.

It happens to be INT32_MAX, but in this case i would simply drop it.
________________________________________
Von: Jakub Wilk <jwilk@jwilk.net>
Gesendet: Montag, 8. Juni 2020 13:21:01
An: Walter Harms
Cc: John Marshall; Michael Kerrisk; linux-man@vger.kernel.org
Betreff: Re: AW: [patch] random.3: wfix: RAND_MAX is for rand(3)

* Walter Harms <wharms@bfs.de>, 2020-06-08, 11:10:
>INT32_MAX is not mentioned in the POSIX page

Yes, it is:
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdint.h.html#tag=
_13_47_03_02

--
Jakub Wilk
