Return-Path: <linux-man+bounces-145-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D15C7F4E78
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 18:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD7E41C209E6
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 17:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6966625561;
	Wed, 22 Nov 2023 17:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
Received: from smarthost01c.ixn.mail.zen.net.uk (smarthost01c.ixn.mail.zen.net.uk [212.23.1.22])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47BDE1A8
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 09:34:44 -0800 (PST)
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01c.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1r5r7a-0014Kv-1M;
	Wed, 22 Nov 2023 17:34:42 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Date: Wed, 22 Nov 2023 17:33:52 +0000
Message-ID: <1726831.JmngrKUi9o@pip>
In-Reply-To: <ZV4XNnNlv8OK1B1m@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Originating-smarthost01c-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 22 November 2023 14:58:56 GMT Alejandro Colomar wrote:
> Hi Deri,
>=20
> I've optimized from 18.5 s down to 16.3 s the script, by splitting the
> pipeline with this wrapper (and slightly reducing the perl script to
> just print the pages to stdout).  BTW, now it can be run from any
> directory.  And every step can be debugged by just introducing
>=20
> | tee /dev/tty \
>=20
> wherever you want to debug.  It's all pushed to master.
>=20
> The PDF is now printed to stdout, to avoid hard-coding file names.
>=20
> I still need to split a bit more and reduce the longest lines.  How does
> this script look to you?
>=20
> Cheers,
> Alex :-)
>=20
>=20
> $ cat scripts/LinuxManBook/build_linux_man_book.sh
> #!/bin/sh
> # Copyright 2023, Alejandro Colomar <alx@kernel.org>
> # SPDX-License-Identifier: GPL-3.0-or-later
>=20
> (
> 	"$(dirname "$0")"/prepare_linux_man_book.pl "$1" \
>=20
> 	| groff -z -dPDF.EXPORT=3D1 -dLABEL.REFS=3D1 -dpaper=3Da4 -Tpdf -k -pet \
>=20
> 		-M"$(dirname "$0")" -mandoc -manmark \
> 		-F"$(dirname "$0")" -P-pa4 \-rC1 -rCHECKSTYLE=3D3 2>&1 \
>=20
> 	| LC_ALL=3DC grep '^\. *ds ';
>=20
> 	"$(dirname "$0")"/prepare_linux_man_book.pl "$1";
> ) \
>=20
> | preconv \
> | tbl \
> | eqn -Tpdf \
> | (
>=20
> 	troff -Tpdf -ms <"$(dirname "$0")"/LMBfront.ms;
> 	troff -Tpdf -M"$(dirname "$0")" -mandoc -manmark \
> 		-F"$(dirname "$0")" -dpaper=3Da4;
> ) \
>=20
> | gropdf -F"$(dirname "$0")" -pa4;

Hi Alex,

Is there a git address I can clone to see the changes "in the round=E2=80=
=9D and give=20
it a go?

Cheers=20

Deri




