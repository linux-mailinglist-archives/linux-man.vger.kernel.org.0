Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 979B6648040
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 10:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbiLIJlK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 04:41:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229816AbiLIJlI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 04:41:08 -0500
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85B61490A1
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 01:41:07 -0800 (PST)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id 16CD9340EBE; Fri,  9 Dec 2022 09:41:07 +0000 (UTC)
Date:   Fri, 9 Dec 2022 18:41:05 +0900
From:   Mike Frysinger <vapier@gentoo.org>
To:     linux-man@vger.kernel.org
Subject: preferred /proc/<pid>/xxx style?
Message-ID: <Y5MCsc/H9BV6RcST@vapier>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tTTzgdNjLA2GpV8I"
Content-Disposition: inline
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tTTzgdNjLA2GpV8I
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

while browsing time_namespaces(7), i noticed it's inconsistent when it comes to
styling of /proc/<pid>/paths.  it uses the styles:
* .IR /proc/ pid /ns/time_for_children
* .I /proc/PID/timens_offsets

grepping the tree turns up more:
* .I /proc/<pid>/maps
* .I /proc/[pid]/status

it seems that the tree is moving towards the first style.  personally i find
that jarring to read because it's using italics for the whole path except for
the pid which has no styling at all.  in the terminal this yields colored &
underlined text except for the "pid" which is just plain text like the rest.

commit 1ae6b2c7b818e5d8804cf8d3abfdb6fba32119db made a large change recently
to proc(5) to use .IR, but with no explanation in the commit message other
than to satisfy a linter, and running that linter locally doesn't seem to show
any warnings when using the previous /proc/[pid] style.

the man-pages(7) guidance doesn't covert this afaict.  it has:
> Formatting conventions (general)
> Filenames (whether pathnames, or references to header files) are always in italics ...
that implies it should be only in italics.

if we look a bit further, using .IR seems inconsistent.
> SYNOPSIS
> For commands, this shows the syntax of the command and its arguments (including options);
> boldface is used for as-is text and italics are used to indicate replaceable arguments
>
> Formatting conventions for manual pages describing commands
> For manual pages that describe a command (...), the arguments are always specified using italics
>
> Formatting conventions for manual pages describing functions
> For manual pages that describe functions (...), the arguments are always specified using italics,
> even in the SYNOPSIS section, where the rest of the function is specified in bold:
-mike

--tTTzgdNjLA2GpV8I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEuQK1JxMl+JKsJRrUQWM7n+g39YEFAmOTAqsACgkQQWM7n+g3
9YEATg/+JVxuFK3hmSpjzCxBRwpk30tcBENb2FtBiEJaoTolXVyubNERCcNXndSl
c7Z2DFPYu9xu7yUfFGTJb/2SB3XdpYt6zmYqu3EelQ3nTsNfRyDtdZdG7BHChBxF
O5otdAZ/cixapb+aBWIIKPE1vfrqIaFCh4kBV62uojdUkkOD2L2c2zq5Ohh8Q35s
F7aRnPmm4533wMU8BXRr6BFRgzDNE2v+MNgl52Io5WR0Pp2YBoXWAl6GmR4QlWU3
0C/gZNzccl3FAnleygYjjVjrvkNBRCDsRpWIfmzCY2T8NWb9hUFE8shT0ExURks7
y510a2KnFQ/R07J/JyKZOBAWY8vVcZtIIP5c7DU5JXNmyR/31QYC14LubyzyOlCG
3bCdrh+3Q6s9s2lUsmeSz4slS3f6oS5BrGUEUzx1yNRNhQRllZEYzdIXgyjn627A
UXW6rYX9kTYWiM8dIAM4fqTIwFBMJQW0+yNDNGXxL4utjTyp2rCn9N6EUb69smQo
Auktzg+qZV+IqpaXk6mSQKvDN0CLP1Ime7v+z4fcNosz60hR1l9vpmLMNd/LnW5C
3ZLeTFAhoEQWJ9PZQ1J0GN3d5HmuMI9xLouF75h/xdpS+NrTRQy5VoJI2ix4ZPwz
pYZd0mSwAQ/bpSyTACgvddOxM/5Xy5ImJWxiv9KJe8pEtCGHEF0=
=J6BH
-----END PGP SIGNATURE-----

--tTTzgdNjLA2GpV8I--
