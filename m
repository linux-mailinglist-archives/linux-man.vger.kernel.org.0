Return-Path: <linux-man+bounces-5315-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJBJKYHe12klTwgAu9opvQ
	(envelope-from <linux-man+bounces-5315-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 09 Apr 2026 19:14:41 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 047323CDFB8
	for <lists+linux-man@lfdr.de>; Thu, 09 Apr 2026 19:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E77FE300FC5A
	for <lists+linux-man@lfdr.de>; Thu,  9 Apr 2026 17:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80CA23E1CFE;
	Thu,  9 Apr 2026 17:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="yax+dp1Q"
X-Original-To: linux-man@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F48C3A5459
	for <linux-man@vger.kernel.org>; Thu,  9 Apr 2026 17:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775754654; cv=none; b=T4Vyzc+eC/7ZpjouZ/Oh/iV1bkTHjqOBCPeXrvvCMpDT+9hYCQ+VNW38N9SwHc0yF+CIvOZ3aIrrSozY2aj6eY8RUS6EqwKHqWMN8+LuDl7gRfmNe+1DX1utJcP4gA8RRs62awq3uL5BQ7RQfVypHCz1fOuhHwVAsGyAXjYL2G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775754654; c=relaxed/simple;
	bh=se3kF8TGRipcruEXuETk3uwiTnvKvq09FdIRa3J/jgE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mN823wGqjOJNmUoGvTHISpm2T9wBvKUgHfGEzagTjjhrUjUC3g6zmaunezGrUmBJOFl7exMZc6HHey0b/Tqyu286ILzyizzsLmWFUDg8+y4wxNiYBdEmbJz1SGtZch0zUtxIJH+C0A5Y1mTJ8Y3jjUAY4JgSQtmTLTz2ahyUIzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=yax+dp1Q; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=85FxjcOGt+8F1WfNdNClzo031+YMXbr+OcAf5K8H2wE=; b=yax+dp1QKs9ahuKrmwWOXdpc+o
	1UI9K7yjUlP49ZD2oSmpHm6Gpp14LCSVnyUwwN8K1IllwJor70vcSlgTUwal0z11uo88lTIgyeMeP
	yedn9z5r9ZuAG9i8es2gq9xrSL6CCYSzEz2ScVDoQru+Rgvq1HV6tx8knj42Kd8IPwG1UkHzGEwob
	nXjP7tvzo52IxJLgAH8f2seHHbsFw0wRgGdPlTtHsfSeFDMH2X0N2JSGxidqvIcaWoqdQrefp8fc8
	RqwB2tXep7UektDBH/Ih3lzuI6spJNymaPje3IlgQGUY+vtbdTQrbyvjtA2UphkWrsn6m+rn5X71n
	rEOEWm2g==;
Received: from guillem by master.debian.org with local (Exim 4.96)
	(envelope-from <guillem@master.debian.org>)
	id 1wAsaa-000lK9-2F;
	Thu, 09 Apr 2026 16:50:44 +0000
Date: Thu, 9 Apr 2026 18:50:43 +0200
From: Guillem Jover <guillem@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-aio@kvack.org
Subject: Re: [PATCH v1 6/6] man/man*/io_setup.[23]: Split io_setup(3) from
 io_setup.2
Message-ID: <adfY40InKCShuLlE@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@debian.org>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	linux-aio@kvack.org
References: <cover.1775639353.git.alx@kernel.org>
 <c6fcae43d95ef9d96e156d295ee72a2b5563dbce.1775639353.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6fcae43d95ef9d96e156d295ee72a2b5563dbce.1775639353.git.alx@kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.master];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[debian.org];
	TAGGED_FROM(0.00)[bounces-5315-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[debian.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guillem@debian.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,kvack.org:email,fedorahosted.org:url,thunder.hadrons.org:mid]
X-Rspamd-Queue-Id: 047323CDFB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi!

On Wed, 2026-04-08 at 11:18:51 +0200, Alejandro Colomar wrote:
> This simplifies the documentation of the system call.
> Let the wrapper be documented as io_setup(3).
> 
> Cc: Guillem Jover <guillem@debian.org>
> Cc: <linux-aio@kvack.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man/man2/io_setup.2 | 60 ++++++++++++---------------------------------
>  man/man3/io_setup.3 | 40 ++++++++++++++++++++++++++++++
>  2 files changed, 56 insertions(+), 44 deletions(-)
>  create mode 100644 man/man3/io_setup.3

> @@ -87,35 +81,12 @@ .SH ERRORS
>  .BR io_setup ()
>  is not implemented on this architecture.
>  .SH VERSIONS
> -glibc does not provide a wrapper for this system call.
> -You could invoke it using
> -.BR syscall (2).
> -But instead, you probably want to use the
> -.BR io_setup ()
> -wrapper function provided by
> -.\" http://git.fedorahosted.org/git/?p=libaio.git
> -.IR libaio .
> -.P
> -Note that the
> +.UR https://pagure.io/libaio

The pagure.io site is being decommissioned in few months, and I've
been meaning to ask where the project will be moved for its hosting.

> diff --git a/man/man3/io_setup.3 b/man/man3/io_setup.3
> new file mode 100644
> index 00000000..28b59550
> --- /dev/null
> +++ b/man/man3/io_setup.3
> @@ -0,0 +1,40 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: GPL-2.0-or-later
> +.\"
> +.TH io_setup 3 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +io_setup \- create an asynchronous I/O context
> +.SH LIBRARY
> +Asynchronous I/O library
> +.RI ( libaio ,\~ \-laio )
> +.SH SYNOPSIS
> +.nf
> +.B #include <libaio.h>
> +.P
> +.BI "long\~io_setup(unsigned int " n ", io_context_t *" ctx_idp );
> +.fi
> +.SH DESCRIPTION
> +.BR io_setup ()
> +creates an asynchronous I/O context suitable for concurrently processing
> +.I n
> +operations.
> +.SH RETURN VALUE
> +On success,
> +.BR io_setup ()
> +returns 0.
> +On error,
> +a negative error code is returned to indicate the error.
> +.SH ERRORS
> +See
> +.BR io_setup (2).
> +.SH STANDARDS
> +libaio.
> +.SH HISTORY
> +libaio.
> +.SH SEE ALSO
> +.BR io (3),
> +.BR io_setup (2),
> +.BR aio (7)
> +.\" .SH AUTHOR
> +.\" Kent Yoder.

I think it makes sense to split the syscall from the actual library
function man pages, and IMO it would make sense to move the .3 man pages
for the wrapper functions to libaio, as it's the project providing them.
I think though it would be nice to have them being self-contained, and
only refer to the syscall man page for reference, but not to delegate
content.

Thanks,
Guillem

