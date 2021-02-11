Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03B5E3187B3
	for <lists+linux-man@lfdr.de>; Thu, 11 Feb 2021 11:05:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230046AbhBKKDx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Feb 2021 05:03:53 -0500
Received: from mout.gmx.net ([212.227.15.19]:51097 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229919AbhBKKAy (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 11 Feb 2021 05:00:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1613037560;
        bh=rkhDeeG2sx4CRS7ibEbIMyRgDuGbwmywMD/L+WzZZ3w=;
        h=X-UI-Sender-Class:Date:From:To:CC:Subject;
        b=fDA/jd6iQw3HTWOYuAQQXqPyzZWVqokNwFFte/IzsjhU5JARzpI4gRHkLpxDfDsAs
         sJH4/TA1vjcmgJIVEc+XLBfvs00RwsS4r2eOIkvOyJ4U9XVKDdHoMRwKNkoXkVFUY9
         F0/Dov9aDxO3p2cVjmuYiAcMB1LVW/PFmPS8IhKY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Antares.fritz.box ([93.133.109.1]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MBDnI-1l2wPZ3dJG-00Ckk5; Thu, 11
 Feb 2021 10:59:19 +0100
Date:   Thu, 11 Feb 2021 10:59:18 +0100
From:   xenoantares@gmx.net
Message-ID: <1169008777.20210211105918@gmx.net>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
CC:     linux-man@vger.kernel.org
Subject: expm1(3p): Mathematical error in given example
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:V0jo+xFmUB4Eu3KP85IN2WoDRgE5awFz6GlW2+Io4SsHV47FZdt
 T68mApEtH4XWnuVw61oHP0rDuJ31pqExFvKwPY6LoS+NnFI1IY0ethb5rCkquLijerGL68z
 wzvwXHNs7XAE8FRnbrA10JzGxYUYc1ycEBmAxZ4w3eh822tb3d3e2k5Me+FttQi7zfNSP4Q
 F6HddXfeLVYofgsgc1mFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HU5oAI9o50s=:lPHE3/IJFmt/WJXrItX+Gg
 fapNhEIL9DyLZ7OtjTiOAJrLu9wxf1vgjcNgTsq2Mp6w2fBn32kEOqeUD/8zD+2+YdSAHSyGh
 fZBUkOQJoRPfQGQJe0EUpK3Vv0l3PPq09aeWsqpcsL/f5Tc02Wt1Q6b91CD2/5IaABmdqL1Uv
 0CToWNZKDtx3jXrfOENYVajThxrMgyxlSeT9/vRGkWGIMjpFVSfV6WdQ1dlrF3HyJiMCaUig/
 eCI3nfdsWVFirn4ruRWRRnlrWeW9J3T0Lmq7sAH1Hug7yL40Fwxj5IpAomXBIkLkNVCEqkW2B
 0bt3i75T7PmpLaefiWVDNj8vyTR/fdN2ikEkom8D1OHIf41TocP8cXrA2srDMgAorrxIZQGV9
 WMUQm58rbj5VVZ6/VtId6LdZusMUaSek2naOoyhEe9ddC1yX6tleKqs6bxtHW8LMItY7b+zh5
 iREJv8O3mEpuBEHoUdMWdimmBr0faf1Za/aEcAxSBXKdbBHnl2z3/DjF/QSyHePQ9ltlMydad
 qfOXczpt6xuAjI0qYaAKpPEafsrc64ILMvMa7l04x0S0k5OpfROqDJHa8+oJKLqGnSDdlWC9d
 ra7JefxUu/ttVGZeD+OCJgBWzIslsdQ7qvZpQr75h5kisu/iNR1MRvY1bdcV+SPEVTgQ5JF7Y
 9gVFX16VZW3eDdEpGY0ZvxSOOkiy0O8rAM+nhKJCZw1TH9P6gQLmKU7aRL8rTRhZoUCC4bMla
 XJINM46M6KwhS8id3XRxY70qLKZQ15DA2W6eMICd2eELUCOw/4g4oG33/DQUGM39YSy7gs+JH
 MYXBlaKTWgNukbLg3JVpXfC7wJQwmBRmXzooWiX2FtZDPxZTQoNrfoCvocfnCUMF18OUbQ+vr
 /ZkLM/EPvnhoBcB3qsDQ==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Hi there!

In the APPLICATION USAGE section of expm1(3p)[1] the given example is wron=
g:

=3D=3D=3D8<=3D=3D=3D Snip =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

[..] calculations of ((1+x)n-1)/x, namely:

           expm1(n * log1p(x))/x

=3D=3D=3D=3D=3D=3D=3D=3D Snap =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>8=3D=3D=
=3D

Actually, both expressions are not equal, rather

 expm1(n * log1p(x))/x =3D ((1+x)**n - 1)/x

(with a fictional ** as power infix-operator) would be.


  Best regards
          -- XA

____
[1] As of version to be found at
    https://man7.org/linux/man-pages/man3/expm1.3p.html
=2D-
XenoAntares

