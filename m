Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4357A166486
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2020 18:24:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727979AbgBTRYv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Feb 2020 12:24:51 -0500
Received: from mout.gmx.net ([212.227.15.15]:58267 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728692AbgBTRYv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 20 Feb 2020 12:24:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1582219483;
        bh=DD83EZWaCRMW6Sw75BLiQl1kGJryUaqTdOO/2D0Tk2g=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject;
        b=Lc1cDuvFXpyRDlj+so5N1KkLwhc6irYw+rOYEq0NIyNWnt9pqqrsn3aY7oXlZajv9
         w1ajk+Q48MVtas9zJjjnicMCNUH6GCLXX+D/hvaWGom2nUliOHX4DTyznjP14ajmmy
         aWSaMyvjbHqpzyvO4V4PYzUFopqSKH/yJLxZ+t60=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ls3530.fritz.box ([92.116.130.11]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MxDkw-1jORqF1jwW-00xbCz; Thu, 20
 Feb 2020 18:24:43 +0100
Date:   Thu, 20 Feb 2020 18:24:41 +0100
From:   Helge Deller <deller@gmx.de>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, John Stultz <john.stultz@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH][RFC] clock_getres.2: Document that consecutive calls for
 CLOCK_MONOTONIC may return same values
Message-ID: <20200220172441.GA12717@ls3530.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Provags-ID: V03:K1:aMCdsTKokRdYWTNpVQzeZtexcN6SV87aIZ5DdhCaItDKvR9CGt3
 7er3wa+kmsb/y3xH+eOnv3cBIjf/TAUsSDts++2wlXcbI8RqB2GLPd/ac5siPSvSmImqXGb
 yE98VPy7zhgWShOjcCEEIbz0l9O/KSmvsT51UZG7cR7zyfQhbFrJ6aKRSPW/K1sO62HLgYP
 boL14D8ytQy61SUf8XrVA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tjsIqu89YTw=:Xvd4L6DLkhvrkELN7Ks5uz
 yy6/icZowwCCasdqbEP54ykl70E0mG60k/hkdUQQ1TiV+MVURetWQA/TG3P0GUxI4FEtt2275
 bEB7nihkasafeqvYno7fZYYIi+dKzkZ0HeIks2m0pAvG+Qb+u8zNFlRzvtjbS0XbqVK/QdYA3
 dXsm5Rkj3m/sj3KoEUVwbcMznfXhHyT/vVQCe3Jjp4t/ZoqyTI3IcIBmmFw2rNQLIsiQpdOyt
 uXBK2jo72SWSt0cbBYsd5x4YF1N0aeUAK4tyoudkrF561EIQaDtqlKOGVrGMOwUtdM3S3gzuU
 J9HIwJZWBGdOLwRBWvsnOfSeFqKeurpHDAL+4jm9xlESRQ+iZ5nNhOC37lw7z4JSoaB0oEF7/
 eemFELm7YHv/psD0mihCsVjFDvXcoZJzA542n3J1r1btcYAOpcoi3TDHohTq2KBtHWHjITITO
 IO+rlyebkX1pjnHRLfWUSAMzXiAtcrsPRawHD0KQ947zecJnqzZHf8sTzZwTY+30wLgC0BvIR
 whJMD5Gt3NUUpwrObne879pdPM/obcLOSi8ukA4sNOq8I/3RAmybQq0COmN4DkN9VosL3r07B
 xNrSrXz5lK3K/I0Uv5D8gCvHAf4yAwd48xIbgzzIBf4xym+QJGmKOojKguyXpQaRKqc/43Hhl
 ZDMoYUoPgo7lWO3Fsh2juTRAZYJV1W6sgDa2O4cPRcSLszYY3cMAU5SEKeKyL09d9pMlc2gKG
 lul3jQ5eqopsK547cqI18TgalRtF6mjIx6PCJkZLL8B81O5iPRmciAIpRhKSTRMg7ZMNpMkQ+
 IdD7yooFoWTBnj8/GtRYyMQ2pSjtWqyY0Uk9/GnvtIWF9yd2E6r5OhAYxNWjaqr0kqUO3Op6u
 D1kONHFaOYw8f+QM2E+gjnllb/3s+M+U0CKqQW54tHhe/CdX7IVPCFtFYGS0sWBaMcHK/583b
 iKb5+ryt8H0yNhdrHiNF/EYEjfMQcWSY0ddJOJBdIWetSVsE8L/J4ALV1AnOJSfyDDae/Is04
 wxDwZ+ZOvlb0tysAthCNmCPAnAPmkqoEf8bTEKpZAv70MNljghtx9ZDXocGGHcWILokstksil
 WLziXLjSDRufO+IeZ2owkbJpKSzPt7+PSxIDdix9Ju2kaI2VYPWOAR6NfMf1sN4v4YiQ3Pj4J
 zdru2B9oaonQC/CibLQm23dE805Wpi6KYB3bM8VO107XCV0M0edBLaAYbeh4+/8Q5CMwlLc88
 sBpDackSOb6Apr7hl
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Consecutive calls to clock_gettime(CLOCK_MONOTONIC) are guaranteed to
return MONOTONIC values, which means that they either return the *SAME*
time value like the last call, or a later (higher) time value.

Due to high resolution counters like TSC on x86 most people see that the
values returned increase, but on other less common platforms it's less
likely that consecutive calls return newer values, and instead users may
unexpectely get back the SAME time value.

I think it makes sense to document that people should not expect to see
"always-growing" time values. For example in Debian I've seen in quite
some source packages where return values of consecutive calls are
compared against each other and then the package build fails if they are
equal (e.g.  ruby-hitimes, ...).

The patch below is just for RFC. I'm open for any better wording!

Signed-off-by: Helge Deller <deller@gmx.de>

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 646fa37c0..89e9f6a30 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -151,6 +151,10 @@ but is affected by the incremental adjustments performed by
 .BR adjtime (3)
 and NTP.
 This clock does not count time that the system is suspended.
+All
+.B CLOCK_MONOTONIC
+variants guarantee that the time returned by consecutive calls will not go
+backwards, but they may return the identical (not-increased) time value.
 .TP
 .BR CLOCK_MONOTONIC_COARSE " (since Linux 2.6.32; Linux-specific)"
 .\" Added in commit da15cfdae03351c689736f8d142618592e3cebc3
