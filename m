Return-Path: <linux-man+bounces-2340-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B146A25E9A
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 16:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F875160E57
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 15:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C521134A8;
	Mon,  3 Feb 2025 15:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="oHJqhYKf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE067205E1C
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 15:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738596192; cv=none; b=tBUV5G9WCICEBfO4CJNEw488FF35kmoIEX5VIs9isKbnOQjzlveDuhuXI6rBZgNe6Q1khUHKO1VYx9cqHv+CPufzEJ+uEde/Vf5n3flRV57P9Zo0bfs36ojzZKYPXCCMQ9LEMhV1y/4FYOqmEfZ+XFMG5YremvuAdMQXKahjj1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738596192; c=relaxed/simple;
	bh=6IfZsZrpWxf92nxErt5g1M6uFyQ7QMkRI7F4RDQPRsc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fNg3qr0nOQZ4P5aP/9vj13wp6zzsUtsW/OaS6AN1LXLFeaqOLR2PIuHLFuTw3I+baj6UJ79ur+iGTBc07qZkepCc5rOVLMtvHzc0/cMC6KSRLhuFN4+EmnuK7DTHiuNmqAB0qr7kKcb63Wbf3QcSxelEKth/VmghDlM6kKiz24M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=none smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=oHJqhYKf; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1738596161;
	bh=qI+N2lCu1440+0JpigZrkkS34rGbJOkjh9+sq9Prz8g=;
	h=Message-ID:Subject:From:To:Date:MIME-Version;
	b=oHJqhYKf29zJwz1FIeg99wsHKlpJ2Kcw92DBFKZyMdV/IjjJdY96HiWDEpU6g33ar
	 ZAALmoVbs3ZyKMBmOvMHAOrEEeWrvqKpoitjmwaE0dS2Fbd90bmKGCYV+SPeeJluZj
	 XnmeHgUOLQD616gvFzj7QmSH8JqWzfH7tdWf03dE=
X-QQ-mid: bizesmtp81t1738596159teuc3w6d
X-QQ-Originating-IP: o3GSvsakQ3MgXNgzFvRlLOKQzWUT/mqf6kilQr041Fk=
Received: from [192.168.3.11] ( [220.250.46.165])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 03 Feb 2025 23:22:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 1727509274907843061
Message-ID: <A0F1DEFC977E1F93+07c873399ddd582be03ea7026c5f982e8b65ae1d.camel@uniontech.com>
Subject: Re: [PATCH] man/man2/clone.2: Use munmap() to free child stack
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Mon, 03 Feb 2025 23:22:37 +0800
In-Reply-To: <2637em7i4bykghsw4wdcyv3jzjo3wzshfauoeqr53ycoy27ffb@r7jkkh7d5fej>
References: 
	<647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
	 <42ewgvp6rg2lnyrd2z3dsfenqp33gjfrbeofirkzdeoaivtbpt@fzue6wssksib>
	 <CAC1kPDPUPu9F1tozO684T9P_xzy1_z1QBqD4Xc1Ok4W+OBGFwg@mail.gmail.com>
	 <zv2pv4azqpfpczm3tjybymjijpdhhsbkgbjo5ndmg7fotmp2qm@zdckgbnnphb7>
	 <6DCE8AF098C0EF64+2feea6f06399f0b0663c943f6e20c95cbb50e131.camel@uniontech.com>
	 <2637em7i4bykghsw4wdcyv3jzjo3wzshfauoeqr53ycoy27ffb@r7jkkh7d5fej>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: NDqwrR4vqDWQAn6NvN+PEhsGofwuC5IG+sWzsulXhm4TRw3IV3FM8Ut0
	SjIEqHoJ3JgSnzwUJfTjvbApOQfsDLNhMRb6JgQjUHEM/aWdugRqS3KxeNAM8HB1voE6mUN
	kf2a5UVZPVm9ve6AhdBTVM5VqHSDJRbrORBK811yUizYYBcdIaUL7D9bZFR/SDzHjD/HfEz
	rbFOWcUfquPI0MTkI2IKCnJoB5bIYzUt/BiShLmDxhXSuT/xt5IkdrxRoe56XNeNsIzxP9j
	5Gp2KIJmtK8NV1s3uGWjsPZqbRtH74p/5lhww5tKbMHNAgvIlg8rzFwUZc4PdRLDFBuEfSY
	W0tUPooUQLBO5nrYYfcuMqORG95Gj9X4t0fT//fPqWNhQupATwnzYZ0sQA2Cm2W/yliyJRV
	IOUALb7BXAy2YHB3USIOEcL7ITUhzTnKK25kyzrHLpKU5yrYhrpXH1NsdGIdesXqBEfAQe7
	VnXEG8yqHWgr00Ed3hGtNsJyFygWdkTeCauIAUxAnVdXqAUTU+yyZk/I7u2fpz0np+K4XRD
	q0PBUBFfN8E77HmN0md5oQRFzLlgWAsoGecFU2QlBhKSNnp00pCPtaElCMAUfTNHJd6bH9B
	DgCAGk4HP+ytANrfa5H0012m65D1gUcLv/2KgaDMCfeDI44+xw7skzEC0ofNlEAQ565mhWZ
	lBNTrY3R3jHjvKdCFG2jplQUqJBUatwvOsKtC7im+lYFwqmFSJKgK+4F/BbaqGfzAoReb15
	w+dGksDTXubMBRjjivU3StnwLvxg+of9LjTKfc0kn8gZ9j3UXsvCWI1Y4mQ2nyEvitjubVx
	rg/BgZFgfdxDo7/WVSUv3JNujb93vDlorGGIIUmGlxfPhM68G94xVyrxbPQEXpIH47WER/h
	PxanZXsW0Nst5J94pI1JqOthFR/xL0LE6FzmB6IQqeEidy0PGVkVOVyRSMxwyh73YYk4lnX
	3WjVG5kDdFRBrBOet3bEZtPCllVsix3UgN0diyXKW5UDe7BuexeFFxVElYwTsRRIYH7kIHd
	iTjc25ng+c8pbbWONB
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

On Mon, 2025-02-03 at 15:36 +0100, Alejandro Colomar wrote:
> Hi Chen,
>=20
> On Mon, Feb 03, 2025 at 10:11:14PM +0800, Chen Linxuan wrote:
> > > > The memory we mmap here is used as the stack of child process we ar=
e
> > > > going to create.
> > > > Once child process is created, I mean clone(2) return without error=
,
> > > > it's OK to munmap(2) memory,
> > > > as the child process has its own memory space, and that memory is n=
ot
> > > > used in parent process at all.
> > > > So, whether the clone(2) is success or not, we both need to call
> > > > munmap(2) to release the memory.
> > >=20
> > > In case of a clone(2) error, exit(3) (called within err(3)) will rele=
ase
> > > the memory, right?  Why do we need an explicit munmap(2) call?
> > >=20
> > > >=20
> > > > If we call munmap(2) after the error handling of clone(2), we will
> > > > print a error message and then exit
> > > > before we free those memory.
> > >=20
> > > exit(3) releases all memory, doesn't it?  Why would we want to
> > > explicitly munmap(2) it before printing the error message?
> > >=20
> >=20
> > In the code snippet provided as an example for clone(2), I believe we
> > should strive to write example code in a way that avoids potential
> > misunderstandings. From the perspective of whether memory is eventually
> > released, the original program does not technically cause any memory
> > leak since the parent process exits immediately after completing
> > clone(2).
> >=20
> > However, I think it's necessary to explicitly perform munmap(2) in
> > cases where clone(2) fails. The reason is: for readers studying this
> > documentation, the error handling approach in their actual code might
> > not be as simple as directly exiting the process. In real-world
> > scenarios, if the error handling here involves returning error codes
> > instead of terminating immediately, handling clone(2) error before
> > calling munmap(2) could become misleading.
>=20
> I believe reporting the error from munmap(2) if there is one, and
> silencing the clone(2) error, would be similarly confusing.  I prefer

I just notice that call munmap(2) before handling clone(2) error will
overwrite errno set by clone(2).

> to have the munmap(2) call after the clone(2) error handling.  That's
> how we do it in most examples.

I think it is better to use warn(3) to report munmap(2) error here. I
will send another patch.

>=20
> But I like proposal to do correct cleanup in the successful path.
>=20
>=20
> Cheers,
> Alex
>=20
> > By explicitly freeing
> > resources before error handling, we ensure the example demonstrates
> > robust practices that remain valid across different error-handling
> > architectures.
> >=20
> >=20
> > > Have a lovely day!
> > > Alex
> > >=20
> >=20
>=20


