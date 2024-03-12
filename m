Return-Path: <linux-man+bounces-573-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E66C4879BD4
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 19:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FC69284006
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 18:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835F91386A2;
	Tue, 12 Mar 2024 18:45:33 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from queue02c.mail.zen.net.uk (queue02c.mail.zen.net.uk [212.23.3.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1768E141995
	for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 18:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.3.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710269133; cv=none; b=WFB20fWsrVS4GxRthW2Ix3IAHr/nBbk/cky8CwlwXVHd61gcf/bhFh3sRSqzvIs/V0OChMAfFyuKCwAizI+xT/g+vnpbL5kyCM6ni7JOGs9YGkUqTKYDfDxt8GI/YinWEFhdwVQpLltzaJ6Tkc4cTzU9mL695dD5FMuR/D+jr3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710269133; c=relaxed/simple;
	bh=jMxX+qja3qAju+4bHEuJWs9835Uskpxjy6XkCVqPAko=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T9R7cePvppCb7ToD4PqriUVCfAqsb9QICPDYKX2lFdPXyTQlSSLjJjrsnjXFRFuRFYim3VVDUO9ijR6sAjfUUFYISldUG8nQ7Aa4q682UQgkEjCZvNf/hJ+eLWV4Mk2JKBH5mpd0tORuKmTRYaggzqbpbJiks45U5lkH57bP8oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.3.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [212.23.1.21] (helo=smarthost01b.ixn.mail.zen.net.uk)
	by queue02c.mail.zen.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rk6ov-00EQvp-B4
	for linux-man@vger.kernel.org;
	Tue, 12 Mar 2024 18:25:49 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01b.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rk6od-002hR7-Iv;
	Tue, 12 Mar 2024 18:25:36 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: Bogus index in man-pages book from other projects
Date: Tue, 12 Mar 2024 18:25:36 +0000
Message-ID: <10631018.ZHfXn36Ih2@pip>
In-Reply-To: <20240312151518.evusk3qi3cfhkxv5@illithid>
References:
 <ZeyMlGwA7MNDZIfj@debian> <ZfBi5PSZXPDpygXB@debian>
 <20240312151518.evusk3qi3cfhkxv5@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Tuesday, 12 March 2024 15:15:18 GMT G. Branden Robinson wrote:
> [looping in groff list]
>=20
> Hi Alex,
>=20
>     I'm attaching another couple of examples to illustrate this.
>=20

Unfortunately, these are not examples of best practice for creating referen=
ce=20
bookmarks. The problem is the bookmarks are just numbered and if you have a=
=20
large document it is easier to give the bookmark a mnemonic instead.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

=2E\" groff -Kutf8 -Tpdf
=2Ede NmSection
=2E  sp 1i
=2E  ft B
=2E  ds pdfsecnm \\$1
=2E  shift
=2E  pdfbookmark -T \\*[pdfsecnm] 1 "\\$*"
=2E  nop \\$*
=2E  ft
=2E  sp
=2E.
=2ENmSection Intro "\%A na=EFve attempt at bookmarking"
Sed ut perspiciatis, unde omnis iste natus error sit voluptatem
accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab
illo inventore veritatis et quasi architecto beatae vitae dicta sunt,
explicabo.  Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur
aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione
voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum,
quia dolor sit amet consectetur adipiscivelit, sed quia non-numquam eius
modi tempora incidunt, ut labore et dolore magnam aliquam quaerat
voluptatem.
=2Ebp
=2ENmSection Another "Another section"
Return to
=2Epdfhref L -D Intro -- the first section
or
=2Epdfhref L -A . -D Another -- the last one

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Cheers

Deri




