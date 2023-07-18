Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E07475806A
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 17:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231661AbjGRPHq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Jul 2023 11:07:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232158AbjGRPHp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Jul 2023 11:07:45 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F37C1C0
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 08:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689692858;
        bh=yR3nrSEWukRZuChJHJJUy3cDurNPkAVpZWegr+axUzs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Nn8g1fpeCz3RwzDHTJNTdwBNoJ7Jvlh1A6V6pJHZy7jwgVj+J+Ep8byIUVfJAtrl+
         KmX/jwrazBllTMUvGGxmLJswh07E7qGnpjBWMzMyYvFpZME1D6OmTNmDnQQvM55VpP
         opR/VmKSkW1l4AvJWF+doADhXVcVM23k6JqziPifVGik99WqZBCtcRUOp2bEGSQeZe
         QWhGkK7G8U7VV38nO538NH8kFx8nXguPBMs5z7sG/nCVrbxpgDCBU/4Uz7x5dgq0Tc
         KkDn0X7gu626Z1cSFdbQin0ukm8EWVMT3IaQEbFpBaUYOtJvyOxIidae0glPmPCOVj
         LB6KUsyiVzr5g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 99CDD3982;
        Tue, 18 Jul 2023 17:07:38 +0200 (CEST)
Date:   Tue, 18 Jul 2023 17:07:37 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v6] grantpt.3: no-op on modern glibc and other UNIXes,
 HISTORYise
Message-ID: <dfrwqbbrhrfwnvkwtbmuyv4qhyt3mvaufgybke5v5nd56jzgro@z3rj7jjrzbht>
References: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
 <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>
 <a36f5f50-b81f-4d1e-b2b3-f6237da94d0b@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wrpzhzf3ofticfy2"
Content-Disposition: inline
In-Reply-To: <a36f5f50-b81f-4d1e-b2b3-f6237da94d0b@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wrpzhzf3ofticfy2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 18, 2023 at 01:42:08PM +0200, Alejandro Colomar wrote:
> On 2023-07-18 01:31, =D0=BD=D0=B0=D0=B1 wrote:
> > Also, administriva-wise, git pull tells me
> >   [PATCH 1/2] statfs.2: unshade as deprecated, but direct to statvfs(3)
> > with msgid
> >   <b4b871ffdf8f764ffd6c25039f3944b08748bd3e.1687553930.git.nabijaczlewe=
li@nabijaczleweli.xyz>
> > is the last outstanding patch I have rn, sans this one.
> I was waiting for you to send an v2 with the fs and inode corrections
> suggested by Tom Schwindl.  Is that correct?
You applied 2/2 but I got no responses for 1/2.
Scissoring a rebased 1/2 below.

Update-wise: musl@ told me they basically agree and will apply it
when glibc does, and I got the glibc first round of reviews and the
hurd half stamped, but it's now entered the "resend every week to
no response" stage that all glibc patches go through.

When those land I'll probably re-shade the declarations, turn the
paragraph into "use the standard statvfs(3) interface instead, but
see VERSIONS if using f_type" and extract the magicks to, like,
fs-magic(7) or whatever.

Best,
-- >8 --
Date: Fri, 23 Jun 2023 22:49:22 +0200
Subject: [PATCH v2 1/2] statfs.2: Unshade as deprecated, but direct to stat=
vfs(3)

Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzha6hsl=
ahv24szs4raroaz@ogivjbfdaqtb/t/#u
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/statfs.2 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/man2/statfs.2 b/man2/statfs.2
index 0496ab6c9..307a29b3a 100644
--- a/man2/statfs.2
+++ b/man2/statfs.2
@@ -15,9 +15,15 @@ .SH SYNOPSIS
 .nf
 .BR "#include <sys/vfs.h>    " "/* or <sys/statfs.h> */"
 .PP
-.BI "[[deprecated]] int statfs(const char *" path ", struct statfs *" buf =
);
-.BI "[[deprecated]] int fstatfs(int " fd ", struct statfs *" buf );
+.BI "int statfs(const char *" path ", struct statfs *" buf );
+.BI "int fstatfs(int " fd ", struct statfs *" buf );
 .fi
+.PP
+Unless you need the
+.I f_type
+field, you should use the standard
+.BR statvfs (3)
+interface instead.
 .SH DESCRIPTION
 The
 .BR statfs ()
--=20
2.39.2

--wrpzhzf3ofticfy2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmS2qrcACgkQvP0LAY0m
WPE/5RAAqF+wibcbyQefKMSQ2k3MNmpkz/GvuWk4PnGikAPUMYWs5HePVwcWYzKu
o2a/qhxCMbfl16k3hYj8Y6fKn4NlZ0PUOqAchw2qrHW2BOxBu6/9VT/MljxgeVRn
THbVTd6tl7CyqlUazlv/K5VBxEeQ3XWWp5aDcZDaV6Z3q8KsgPQO0hfdZ4Z1CYfZ
jBKTOgyL0lk7md62VUpaVOgnFz/McrIajjjKRlzPgOlfuVRDQvFkHwfGul4hl14z
c8ennxGEBDYVEfI9CS3svntN0Xn67Dusa0bqF+1qkjrnQvmj7QPl7zGweToc+D50
Y8Av/Dv2p9tZoK6nXyU/AQ3g4uIZNvD9mFjG2n9SjxwnxIK/mRwl4zi8bqfdenjj
pSMh1eSZe4tcEacD2uhmmf7kmN4qXVfmdzpPsQbguZAfzyo2qa2CB8MRuy+OY5FL
3w4bzntggDn4/i4gT6PqdNIgw5PqO6NYulZGFC6lqo55GcTMxS4ePO4LRvUIvbVE
JdPXN9+FXPnzqf8HUuv3daJtviiJ6H6e6y9QVBxJ9/F5Oew9xBWHdRKOKsn4nemQ
ywC87QAXAJ6LqpfsnDiKgTEBbUOo5ZOZUj3BB+SJzVf+o6YOsZl3iHS59YTY9Hkn
nKGWCxzYbg+DbGpdttSFbBWDu+DrLSG8T+RGsusHutZITaRevcs=
=HgNr
-----END PGP SIGNATURE-----

--wrpzhzf3ofticfy2--
