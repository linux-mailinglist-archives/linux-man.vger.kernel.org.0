Return-Path: <linux-man+bounces-2338-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5B0A25BF4
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 15:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26F84161AEA
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 14:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93DB92063CA;
	Mon,  3 Feb 2025 14:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="qLXq5QhV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9471FC0F9
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 14:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738591927; cv=none; b=LReIMhWXttOSVbvd7jfR6OuUFErGbPu4mKpyVsRkFOZuV5+lkCoYbGhWX3Wwzk9Uhc8IDYjxCOh6g6CEt9XhdVlpaoxq9yTODRkpzJxypAFjmMDy3TZvaF0onJES86eaL144iutKmh3vl6c1A02ya7Wcz2ieLBoj50suATN0l2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738591927; c=relaxed/simple;
	bh=pcNMjbQOnH3wTAhz9WhRFe9Oinh8OtgrlbhuFtZ4blo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MAxmgdrheuAg5wTuYIW6BQseTjEbeNeqQToGMdwUlg048L+ElDH17hNAVABbCW6ROBUgicbq7a7gKMoAI8qxTI/A/UbGLjopFOs9b4oPh9/HxNVTsomoYdVR+mHiLutEHqeODHNDjZWY3FKLkmwfg3tfpbP+OsyXfqPUU+NDKTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=qLXq5QhV; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1738591879;
	bh=LgoyYnrglbtZwYS92LOkonTSbLTQsR74v/WQeFPTBqM=;
	h=Message-ID:Subject:From:To:Date:MIME-Version;
	b=qLXq5QhVS5ZEXDYTD4m3fc4DNquF/ONJCMJexBqamcWYydXhCdEkZo3bUGNiUxOlL
	 hZW7AbSyHLKvYEX0UYbaqb7ZI8XWsVfyQNuavp7Ce7bvFxo45OXM/xgo2qVHJAYhNt
	 /LF2SckZNaGVqbdsXyMpAry4jneN6CirbkMw3fRM=
X-QQ-mid: bizesmtp89t1738591876t4sd57f2
X-QQ-Originating-IP: +43EI0J1RfmbSszjQ/+ueOmKaBgVeluA2W2Y/rz1wY0=
Received: from [192.168.3.11] ( [220.250.46.165])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 03 Feb 2025 22:11:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 8277073447719564057
Message-ID: <6DCE8AF098C0EF64+2feea6f06399f0b0663c943f6e20c95cbb50e131.camel@uniontech.com>
Subject: Re: [PATCH] man/man2/clone.2: Use munmap() to free child stack
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Mon, 03 Feb 2025 22:11:14 +0800
In-Reply-To: <zv2pv4azqpfpczm3tjybymjijpdhhsbkgbjo5ndmg7fotmp2qm@zdckgbnnphb7>
References: 
	<647EBDB1A8DE7507+20250121031351.548052-1-chenlinxuan@uniontech.com>
	 <42ewgvp6rg2lnyrd2z3dsfenqp33gjfrbeofirkzdeoaivtbpt@fzue6wssksib>
	 <CAC1kPDPUPu9F1tozO684T9P_xzy1_z1QBqD4Xc1Ok4W+OBGFwg@mail.gmail.com>
	 <zv2pv4azqpfpczm3tjybymjijpdhhsbkgbjo5ndmg7fotmp2qm@zdckgbnnphb7>
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
X-QQ-XMAILINFO: NAtipnnbTPeaqKFMtot+H089cqzbGF/ozYyvIPw9t45GtfE1DzUjXyAo
	4b6Gi26E1T+P8JjwYH7a1Etifs/ISUfFlUT60aCAdpMjysUPpT/nP28h6D5rRzY3dEdrinQ
	9myt9llLJSFwPoqamBM3gMMzHCiiuwjYyUKivCIuxkeDMBsjbyYWU2nZNA3u67Q7gUK99K4
	R4JxJ284aNxQFkFc/Jg9WT4LZzHNxdUytm8j3Bwy/onmuVT1m06pgw4wGzO8a6Ntlwh4SS7
	J4Ob6MYt5+xRO+uto7uvvSnAQo0Y3OohGGbiTviP5+3JsrqNG17fZBu+wA/K4r6vopDP8TQ
	nWWDjdTtdF1yQRvNbDzP+D+w8WeX2gMSlNSZTS6gDCu+7BN63EqW2DGvx81R+zt4hgrIFQY
	lLa22jDBpWHTZMydvOJOrXmEfiNrMlpOuYGFsoHvxoALCAYmeitezQOG252xXRbmebtlMVq
	Ny+Yhggw2t9IklFsr91eCaeSOlpikYacSBkXStS/lmzFcyOnjTk4/pj1PMaLqMOQd1wgfF2
	n8AWSLg6PAgN+bo+EVUnkeYApA1qAL488xQPpSPRMZtmlKLUPf6BIF9lIThSHDSfqv7dB5K
	g+lUuphTXO2LxKIRy1/2E+xCr749rTMZ+NfyEZLvILRBkYxd0DTvjakrhv9HPvXHeFErzmk
	SRhJJ69tXWi7OARhbFOnx6qdyGaNzOb10IsZ0hPwieZXO59GaYDDYm1BNAlIblBg7ijSsJI
	oGRnT7jbpZK/hd/Vr6rVkXPLTkA7YXpFSeVxbGErZ765f8KeWLQQ+lZvJEqy3obvSJ5esT6
	C148abC7fyYCDRa9CrlPH2NWu67B9iP6D7QCJksSUnqfJAUQoKGG0ZR8nb6KCXXy3SnSlzB
	5z+HdBMLenlWjrydce2Qd/MXGNXjwo3GVPe2KOObA/GbKjgkv6o94KUIK+bzYmJTWB1YhLC
	gu6fo8o1BK/gF/uofOaWTySmUL3EnI4Yc1AyVneMbyx2b7w==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

On Mon, 2025-02-03 at 08:59 +0100, Alejandro Colomar wrote:
> [CC +=3D linux-man@]
>=20
> Hi Chen,
>=20
> On Mon, Feb 03, 2025 at 02:25:14PM +0800, Chen Linxuan wrote:
> > Alejandro Colomar <alx@kernel.org> ???2025???2???3????????? 00:56??????=
???
> > > On Tue, Jan 21, 2025 at 11:13:51AM +0800, Chen Linxuan wrote:
> > > > While reading the help manual for clone.2, I notice that the parent
> > > > process in the example code does not release the stack of the child
> > > > process.
> > > >=20
> > > > This is not a problem for the example program, but it is somewhat
> > > > misleading.
> > > >=20
> > > > Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
> > > > ---
> > > >  man/man2/clone.2 | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > >=20
> > > > diff --git a/man/man2/clone.2 b/man/man2/clone.2
> > > > index 3ffe8e7b8..5e6b2ef1f 100644
> > > > --- a/man/man2/clone.2
> > > > +++ b/man/man2/clone.2
> > > > @@ -1910,6 +1910,8 @@ main(int argc, char *argv[])
> > > >         child commences execution in childFunc(). */
> > > >  \&
> > > >      pid =3D clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, arg=
v[1]);
> > > > +    if (munmap(stack, STACK_SIZE))
> > > > +        err(EXIT_FAILURE, "munmap");
> > > >      if (pid =3D=3D \-1)
> > >=20
> > > Would you mind clarifying why this munmap(2) call goes before the err=
or
> > > handling of clone(2)?  I'm not very familiar with clone(2).
> >=20
> > The memory we mmap here is used as the stack of child process we are
> > going to create.
> > Once child process is created, I mean clone(2) return without error,
> > it's OK to munmap(2) memory,
> > as the child process has its own memory space, and that memory is not
> > used in parent process at all.
> > So, whether the clone(2) is success or not, we both need to call
> > munmap(2) to release the memory.
>=20
> In case of a clone(2) error, exit(3) (called within err(3)) will release
> the memory, right?  Why do we need an explicit munmap(2) call?
>=20
> >=20
> > If we call munmap(2) after the error handling of clone(2), we will
> > print a error message and then exit
> > before we free those memory.
>=20
> exit(3) releases all memory, doesn't it?  Why would we want to
> explicitly munmap(2) it before printing the error message?
>=20

In the code snippet provided as an example for clone(2), I believe we
should strive to write example code in a way that avoids potential
misunderstandings. From the perspective of whether memory is eventually
released, the original program does not technically cause any memory
leak since the parent process exits immediately after completing
clone(2).

However, I think it's necessary to explicitly perform munmap(2) in
cases where clone(2) fails. The reason is: for readers studying this
documentation, the error handling approach in their actual code might
not be as simple as directly exiting the process. In real-world
scenarios, if the error handling here involves returning error codes
instead of terminating immediately, handling clone(2) error before
calling munmap(2) could become misleading. By explicitly freeing
resources before error handling, we ensure the example demonstrates
robust practices that remain valid across different error-handling
architectures.


> Have a lovely day!
> Alex
>=20


