Return-Path: <linux-man+bounces-3107-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFD9ACF25B
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 16:53:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 547941896C10
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 14:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FA4518FDAB;
	Thu,  5 Jun 2025 14:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JS4uY+3e"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA3617FAC2
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 14:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749135195; cv=none; b=TXQ5UWAHTzNAk5ADBPhizicT+YoQzMXoAHxdT1KMchJrFZy6qnYMbxmX+FLGZOS5KCODDLOTAuNOH1s+S9SWkfUXowhIvJMRYWw8GNyzs+/1UN6LHZB7fFD6ADtrqBqrD1nNtDfr8/MDBJcuucin6larLXQTBevIfhMW/nThYeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749135195; c=relaxed/simple;
	bh=GUYGVj2LgAb+MKBKhW+2EzjAlEnr7sIDFwhhvM0OS58=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HYB62OkmFQ2RfsNxG7BHv6d2HVGW2oFpVwNmEDnILkCtkCozk9TiGpvT6T0I4leT/6f+g+Ot56qceayrivANoaGZwmKBeMzaW2Y7I6GCvBvfOmwydmNN7d3dFuDCEtwoH7mVqagFR3YOoF5ZpoZIWl5u4SxdeLZRNAGC4I/Ayw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JS4uY+3e; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749135191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TO6xTgX5ysAHoUaJzb3VI8g+3NZuUbae0HRBz1KEpzU=;
	b=JS4uY+3eu2Qqsy53DUOx2318buV65RFZbfsVNQgKoeNkw1/uR1Zw7LQXtoYy/l9pUK30Sk
	fgjzRRi8c7CsgJXgO4SNBHXt1eU0IOnhiIdRwVBU/BhzXB0uvHRGNz6q5V2v+1XWDQ9OS/
	MIvMRlos2VfzNtaIpnTZG5eWXD4yM8E=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-156-AAW6scgEPLClMgj2-jlW4w-1; Thu,
 05 Jun 2025 10:53:08 -0400
X-MC-Unique: AAW6scgEPLClMgj2-jlW4w-1
X-Mimecast-MFC-AGG-ID: AAW6scgEPLClMgj2-jlW4w_1749135187
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B8E618001D6;
	Thu,  5 Jun 2025 14:53:07 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.45.225.242])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 604991956094;
	Thu,  5 Jun 2025 14:53:05 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Naughton <mnaughto@redhat.com>,  Mark Harris <mark.hsj@gmail.com>,
  linux-man@vger.kernel.org,  Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
In-Reply-To: <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
	(Alejandro Colomar's message of "Tue, 3 Jun 2025 21:48:58 +0200")
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
	<7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
	<CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
	<kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
	<CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
	<CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
	<movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
Date: Thu, 05 Jun 2025 16:53:02 +0200
Message-ID: <87a56mxmsx.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

* Alejandro Colomar:

> Hi Mark and Mark,
>
> On Tue, Jun 03, 2025 at 03:52:59PM +0100, Mark Naughton wrote:
>> Agreed, Mark.
>>=20
>> Mark
>>=20
>> On Tue, Jun 3, 2025 at 3:48=E2=80=AFPM Mark Harris <mark.hsj@gmail.com> =
wrote:
>> >
>> > > > When I open a man page I want to see "what arguments do I pass and=
 in
>> > > > what order". With this change you have to parse the prototype for =
the
>> > > > semi-colon
>> > > > to see the start of the args.
>> > >
>> > > I tried to use a style that makes the ';' stand out more, by breaking
>> > > the line after it.  But I agree that the first times you look at it,=
 it
>> > > can be a bit confusing and hard to distinguish.
>> >
>> > The main issue with the forward declaration syntax is that it is easy
>> > to mistake the forward declarations for arguments, especially when
>> > just quickly checking the man page to remind yourself which argument
>> > is first.  If you want to retain this syntax, what might help is to
>> > remove the bold font style from the forward declarations, or change
>> > their formatting in some other way to be different than that of the
>> > arguments.
>
> Hmmm, agreed.  I had been thinking about it.  Maybe using all roman for
> both the type and the variable name would be good.  Thanks!  I'll do it
> when I finish some other work I'm doing at the moment.

Somewhat related: This syntax is currently used for inputs that can be
either strings or arrays.  Two examples:

       size_t strnlen(size_t maxlen;
                      const char s[maxlen], size_t maxlen);

       int strncmp(size_t n;
                   const char s1[n], const char s2[n], size_t n);

Obviously, we want

     strncnmp(subject, "prefix", 6)

to be valid independently of the length of the subject string, and the
declaration with the array syntax does not seem to be compatible with
that.

Thanks,
Florian


