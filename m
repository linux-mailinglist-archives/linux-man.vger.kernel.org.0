Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 880BF65F711
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:52:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236273AbjAEWwk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:52:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236232AbjAEWwj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:52:39 -0500
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 548755881D
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:52:38 -0800 (PST)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-15027746720so29571610fac.13
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tW6qw+9Boa11Q4pgpH40gZnQkMv+SV3TnhPob81VenI=;
        b=WJ3E/9HSWmYZwiGDJ3G769lxUrRsTn0bv39lNl8H38JVaSM61HT6yub80wydvyZOC8
         jXSTkCROZjkMI0bJIDtNmEEdJGVbOOsgjAXf1kdVpupVEoeOPtKMjXkhPatzqnRDTh0C
         qzCDYM8TGyFYvaNuGEmxa8oTiQYpe/IcSR5mI/ufJEbQxTe3UPhagsOtZ5aNU/ZWg35K
         sXuiR3JLpO1QnAR0/Q5hIQzhbygEJ/KvQoV0+vmenRTGFp2CYXAz9f24Dy0zrpTHTn2J
         pLgk4lXie+OsTkjjJoZ3vu7zB3g3B+rHTj8VCzCL1PeLHjF/a7gYkS+ZQ8kf0OwA6osi
         pNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tW6qw+9Boa11Q4pgpH40gZnQkMv+SV3TnhPob81VenI=;
        b=F5wbL9ZVJYVPNi1J23b7fPXSzOcjE28SEzrw8eIumdhwFak7SOvXglwo+EBZgHq3Cx
         1jL6FWp1uOWqwtghfa2M5YgyxLToFMl2Pez7SpfIytAvx7AKhCxKczOj1TyPxfzSFeAi
         qwLl5oZXRqG+qV7C18aG7/dDlui/znlrDLdO6C6WhoxlfbVMAVtBLCO3h/FZIumhGWk9
         IOigs4NeCeYCO265E3Ug9z5rS0He5bodlDonG6wcY6h4BAHnbd63S/i4DEWEfPBMEHwu
         xdq9e7dy8czJ1HiPwoEND6yzxUGpn9elnQE5z92mWKBxKpa0HSPIBO5EYOSFZ3EbiedL
         Xntw==
X-Gm-Message-State: AFqh2kqgz+vAQWiu0+PIb+TsP0+XOD5WCHb/L6XeatFlkia1uBpsjSFW
        ugQrzOBX0mg8YUKt7VIv3WhDfJWgZU0=
X-Google-Smtp-Source: AMrXdXtZvmIe082rxtvwvKQRxA+ndLhgI/g0BEArL38HABw46Kp6Ds02X0ZPdesP2fyZKvDb9+F1wQ==
X-Received: by 2002:a05:6870:a408:b0:14b:7e4f:f0ca with SMTP id m8-20020a056870a40800b0014b7e4ff0camr27273331oal.31.1672959157665;
        Thu, 05 Jan 2023 14:52:37 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b16-20020a056870471000b0010c727a3c79sm17494927oaq.26.2023.01.05.14.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:52:37 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:52:35 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 04/13] ldconfig.8: wfix
Message-ID: <20230105225235.6cjtz6orjzxzvo6v@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vwjw6cfvkcomfc6f"
Content-Disposition: inline
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vwjw6cfvkcomfc6f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Promote a parenthetical to primary discussion.  64-bit systems are the
  norm nowadays.
* Perform a Kemper notectomy.  That is, stop saying "note that"
  followed by some declarative statement.  This trope is all over Unix
  documentation and I even see it in ISO standards.  The latter doesn't
  serve to recommend it; as Dave Kemper has pointed out, everything we
  put in technical documentation should be worthy of note unless placed
  in a footnote, marked as "unnecessary on a first reading", or similar.
  It is the exception, not the rule.  If you feel the need to say "note
  that", consider what adjacent material you shouldn't be saying at all.
* Say "symbolic link" instead of "symlink".
* When one sentence explains the previous, use a semicolon.
* Place the modifier "only" more carefully.
* Recast option descriptions to be in the imperative mood.
* Recast file descriptions to use the paragraph tag as the subject of
  the first sentence.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man8/ldconfig.8 | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 3460275ad..de2b7a5c3 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -38,8 +38,8 @@ in the file
 and in the trusted directories,
 .I /lib
 and
-.I /usr/lib
-(on some 64-bit architectures such as x86-64,
+.IR /usr/lib .
+On some 64-bit architectures such as x86-64,
 .I /lib
 and
 .I /usr/lib
@@ -48,7 +48,7 @@ while
 .I /lib64
 and
 .I /usr/lib64
-are used for 64-bit libraries).
+are used for 64-bit libraries.
 .PP
 The cache is used by the run-time linker,
 .I ld.so
@@ -95,9 +95,8 @@ option.
 should normally be run by the superuser as it may require write
 permission on some root owned directories and files.
 .PP
-Note that
 .B \%ldconfig
-will only look at files that are named
+will look only at files that are named
 .I lib*.so*
 (for regular shared objects) or
 .I ld\-*.so*
@@ -105,7 +104,7 @@ will only look at files that are named
 Other files will be ignored.
 Also,
 .B \%ldconfig
-expects a certain pattern to how the symlinks are set up,
+expects a certain pattern to how the symbolic links are set up,
 like this example,
 where the middle file
 .RB ( libfoo.so.1
@@ -162,13 +161,12 @@ Ignore auxiliary cache file.
 .TP
 .B \-l
 (Since glibc 2.2)
-Library mode.
-Manually link individual libraries.
-Intended for use by experts only.
+Interpret each operand as a libary name and configure its links.
+Intended for use only by experts.
 .TP
 .B \-n
-Process only the directories specified on the command line.
-Don't process the trusted directories,
+Process only the directories specified on the command line;
+don't process the trusted directories,
 nor those specified in
 .IR /etc/ld.so.conf .
 Implies
@@ -219,15 +217,15 @@ the cache is still rebuilt.
 .PD 0
 .TP
 .I /lib/ld.so
-Run-time linker/loader.
+is the run-time linker/loader.
 .TP
 .I /etc/ld.so.conf
-File containing a list of directories,
+contains a list of directories,
 one per line,
 in which to search for libraries.
 .TP
 .I /etc/ld.so.cache
-File containing an ordered list of libraries found in the directories
+contains an ordered list of libraries found in the directories
 specified in
 .IR /etc/ld.so.conf ,
 as well as those found in the trusted directories.
--=20
2.30.2


--vwjw6cfvkcomfc6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VLMACgkQ0Z6cfXEm
bc7NuQ/+MArQB7rRRvucMP/K/YzYH/p6em88owmNQUElxByKEQT9F5ZIZTwe9xO1
RaIiPMkhhJ5DMMbIaBFIZy3BAN7tmjNWsWf1yyw706A28Y8AjbTfCKpcF8di3y1O
7TQueZmDEgDO2b7iZQXrnuoJQCEQ7z/cSZoIS97tmMeUjfzgUMlBqGoG9ChLjYq+
X3FgB7jei/g+7aXQzrR0gxoRNMNOESPGw43WhRkKij39clRq+2OmIolfZgHyZPPv
RemFwQOY2mjkNlrO8oXHJv51UCrAi7Ve8SY1cEIkXIniGcPrDXK+2LIwEaPWjtmF
YWcvkg8pqogYhxkrHXFGUHWOgi8aTT//DKtanrBdGmBYHtYxS3EUfzqv18XpddEH
89fPMAR6ryrFYKLkGbdNEVZfFm7Us6RfTs8l+D5uD33GG/z76RAnOFmksnSaDUt5
KUUQxmqoKequ4QzvRQNeqR7xc3Tm0eRlC6Kcc0rxLoGuf+DUF9Jn9xX7YafqZsLZ
rVrKalATZqkpUW6qi6VrXzw2Nu5CSa1q1U4fggZICjhsBuwLGKpdZabOexsoNbzD
yj+DC7cveDgg1cwQnNJt1p7Gvtz6dpsNAcyvOTagnmSncco4v7F+uGeJMXXgLUFt
dpB4p6EpvpgGOXQ7LYmPgt5h01XxkoJA19kvkYmLBPKcRoTEmNM=
=43yo
-----END PGP SIGNATURE-----

--vwjw6cfvkcomfc6f--
