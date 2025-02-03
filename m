Return-Path: <linux-man+bounces-2339-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2498EA25D54
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 15:50:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E648A3AEA27
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 14:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA188209F50;
	Mon,  3 Feb 2025 14:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkpuh4bw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3AC2080EE
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 14:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738593389; cv=none; b=gn+1wZ28V7V2YYhZxIw6f2rNOzgftT2W93aWZ8UPXUGKXQAyLbM/tgip2TiZFfcF+0cLGUZGbfrVVhWE/cOMU8pzOwKdj1LzJC4GTRIf9+4CB9XBjFrGeiKR9/Ipuq5ky99RNGSVuANXDvXUhFlTNudrfXqDYbCRQlybK8Kumm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738593389; c=relaxed/simple;
	bh=rG+bxI4q1QviCMo17KYkL8DbQXAv6SwGbyNGjZw8Oak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hOOaTrSr0agY+6du4oQ7RkP7gUnQe/qjC882CvB1+vWQyWTqaLbw2Q2fh4KIcUvxp+tWnZpICZyayrC+F0yukTa31RR/qyrEun2rXqftSHqg5QlHDd/A+DPsCABnNJdBqxj+n0SaALs6J5KsuynVHctfjEOeXrNydtKlexzE9ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkpuh4bw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA8BBC4CED2;
	Mon,  3 Feb 2025 14:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738593387;
	bh=rG+bxI4q1QviCMo17KYkL8DbQXAv6SwGbyNGjZw8Oak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dkpuh4bwWHIl3qIG0Nujjj+2RUfRlA+wX8fKvGV7UCEBlxJVDi+eyT0RQTXc1QdUw
	 pwTXMaajjaenMcYgY/Nwq4bqehfxhYpbamXFRaWPP7zPGSlrZ5oiJgy6p1f/WotFZY
	 J4D2lpsIZ87SWcto4797diqqlUMvKK3B04pIdgbCcpD6pdMTQsCfIXY54nJg+xGuri
	 3liOve2NxV8FUm9PxARywNOuKmmxKGd9H1cawlVqCvZk7++Z/ZhrJzjAmgwM0FRpOu
	 lMrMnn6P4mNhLy+L64K7dJooaxJQFB6tWRg4MTXFL5Ogn3g8agkCLPB5q1UQ+kQU4Z
	 WYO3O6DBIYAiQ==
Date: Mon, 3 Feb 2025 15:36:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/clone.2: Use munmap() to free child stack
Message-ID: <2637em7i4bykghsw4wdcyv3jzjo3wzshfauoeqr53ycoy27ffb@r7jkkh7d5fej>
References: <647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
 <42ewgvp6rg2lnyrd2z3dsfenqp33gjfrbeofirkzdeoaivtbpt@fzue6wssksib>
 <CAC1kPDPUPu9F1tozO684T9P_xzy1_z1QBqD4Xc1Ok4W+OBGFwg@mail.gmail.com>
 <zv2pv4azqpfpczm3tjybymjijpdhhsbkgbjo5ndmg7fotmp2qm@zdckgbnnphb7>
 <6DCE8AF098C0EF64+2feea6f06399f0b0663c943f6e20c95cbb50e131.camel@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6DCE8AF098C0EF64+2feea6f06399f0b0663c943f6e20c95cbb50e131.camel@uniontech.com>

Hi Chen,

On Mon, Feb 03, 2025 at 10:11:14PM +0800, Chen Linxuan wrote:
> > > The memory we mmap here is used as the stack of child process we are
> > > going to create.
> > > Once child process is created, I mean clone(2) return without error,
> > > it's OK to munmap(2) memory,
> > > as the child process has its own memory space, and that memory is not
> > > used in parent process at all.
> > > So, whether the clone(2) is success or not, we both need to call
> > > munmap(2) to release the memory.
> >=20
> > In case of a clone(2) error, exit(3) (called within err(3)) will release
> > the memory, right?  Why do we need an explicit munmap(2) call?
> >=20
> > >=20
> > > If we call munmap(2) after the error handling of clone(2), we will
> > > print a error message and then exit
> > > before we free those memory.
> >=20
> > exit(3) releases all memory, doesn't it?  Why would we want to
> > explicitly munmap(2) it before printing the error message?
> >=20
>=20
> In the code snippet provided as an example for clone(2), I believe we
> should strive to write example code in a way that avoids potential
> misunderstandings. From the perspective of whether memory is eventually
> released, the original program does not technically cause any memory
> leak since the parent process exits immediately after completing
> clone(2).
>=20
> However, I think it's necessary to explicitly perform munmap(2) in
> cases where clone(2) fails. The reason is: for readers studying this
> documentation, the error handling approach in their actual code might
> not be as simple as directly exiting the process. In real-world
> scenarios, if the error handling here involves returning error codes
> instead of terminating immediately, handling clone(2) error before
> calling munmap(2) could become misleading.

I believe reporting the error from munmap(2) if there is one, and
silencing the clone(2) error, would be similarly confusing.  I prefer
to have the munmap(2) call after the clone(2) error handling.  That's
how we do it in most examples.

But I like proposal to do correct cleanup in the successful path.


Cheers,
Alex

> By explicitly freeing
> resources before error handling, we ensure the example demonstrates
> robust practices that remain valid across different error-handling
> architectures.
>=20
>=20
> > Have a lovely day!
> > Alex
> >=20
>=20

--=20
<https://www.alejandro-colomar.es/>

