Return-Path: <linux-man+bounces-2878-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ED049AB1472
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:11:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 401531C27F32
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FA77291860;
	Fri,  9 May 2025 13:11:11 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829A922A4D6;
	Fri,  9 May 2025 13:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796271; cv=none; b=pkWeC+jHlj7O9aJp1k7KsXqCTEcFm3BWc7XTC3rgPm8e8BrDNGvYcn6GoORJHOjOpdRcWmdTEHlAsN3YbzdfDIA7jKhBiDwlSAdwWDtmJ+GWAKnWU+B4KT8vhQDBt6jhWROi5BInw+NPAwoeVgqYowtcSw13L8ELDW+zuxyG9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796271; c=relaxed/simple;
	bh=UHjJUIvCnRxbSzKoN5s885Xm5PYJgxuoKDUt61SWGl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W9XEhBtibrRkZnQNQpgQWlQpiwjbuO640Bn8OhnfsQAaA5tpc97dEQ9TRrOD0bBxpdianvC6Bp9d3dVUxTAGUThYTv78Cuhu6CG+17WPH5RT5WKnHMshW7FPzbhqiekdHojv5kcmjpoPDKoLywuoiztWDBV00Zty6yomQEgv3Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98.2)
	(envelope-from <vincent@vinc17.net>)
	id 1uDNVL-000000003OM-1Gsi;
	Fri, 09 May 2025 15:11:07 +0200
Date: Fri, 9 May 2025 15:11:07 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org,
	"G. Branden Robinson" <branden@debian.org>,
	Carlos O'Donell <carlos@redhat.com>,
	Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: man-pages-6.14 released
Message-ID: <20250509131107.GE3017@cventin.lip.ens-lyon.fr>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>,
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org,
	"G. Branden Robinson" <branden@debian.org>,
	Carlos O'Donell <carlos@redhat.com>,
	Eugene Syromyatnikov <evgsyr@gmail.com>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <qghsrpxzxccbcuuctx56oq5xe7mtpkgljis7ovopr6ojmiz3js@vw5p5w7om4f4>
 <20250509124829.GD3017@cventin.lip.ens-lyon.fr>
 <ib7p6mx6sltp2bu6vxw7n2urxuaq2lk4a6efsgnjym43svpvy3@wbgmnm6sy23o>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ib7p6mx6sltp2bu6vxw7n2urxuaq2lk4a6efsgnjym43svpvy3@wbgmnm6sy23o>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

On 2025-05-09 14:57:56 +0200, Alejandro Colomar wrote:
> Hi Vincent,
> 
> On Fri, May 09, 2025 at 02:48:29PM +0200, Vincent Lefevre wrote:
> > I don't think so. But IMHO, it would be OK to provide the old copyright
> > notices in an indirect way: put them in a different file and just give
> > a reference to this file, as long as this file is distributed together
> > with the man pages and can be found easily.
> 
> Hmmm, I considered that the copyright attributed to the contributors
> and then a CREDITS file that lists the contributors is an indirect way
> of keeping the notices.  The CREDITS file is distributed together with
> the manual pages, and can be found easily (root of the repo).  It
> doesn't keep the original notice text verbatim, though.

This is my thought, and the fact that the CREDITS file gives fewer
details might by an issue w.r.t. *old* copyright notices. That said,
the CREDITS file would be more correct because incorrect things had
been done on the copyright notices in the past.

Let's give an example: commit 7d6b0208863d41c78785c47d564cf4b55906f0d1

In this commit, text was moved from regex_t.3type to regex.3 (and
the regex_t.3type contents got entirely removed, including its
copyright notice), but the copyright notice of regex.3 was not
updated to include the one from regex_t.3type:

regex_t.3type had

  Copyright (c) 2020-2022 by Alejandro Colomar <alx@kernel.org>
  and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com>

but in this commit, regex.3 still had only

  Copyright (C), 1995, Graeme W. Wilford. (Wilf.)

  Modified 8 May 1998 by Joseph S. Myers (jsm28@cam.ac.uk)

IMHO, due to potentially intractable issues with text moves between
man pages, copyright notices should apply to the whole project, not
to individual files. This is what CREDITS does.

But also preserving old copyright information somewhere might be
needed, even though it is incomplete (and perhaps give some warning
about that).

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

