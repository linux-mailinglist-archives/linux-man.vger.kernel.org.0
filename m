Return-Path: <linux-man+bounces-903-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D968C3981
	for <lists+linux-man@lfdr.de>; Mon, 13 May 2024 02:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B85A1F212F5
	for <lists+linux-man@lfdr.de>; Mon, 13 May 2024 00:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15DF6360;
	Mon, 13 May 2024 00:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=usta.de header.i=@usta.de header.b="oH1GcOP7"
X-Original-To: linux-man@vger.kernel.org
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [129.13.231.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD3800
	for <linux-man@vger.kernel.org>; Mon, 13 May 2024 00:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.13.231.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715558829; cv=none; b=AVYLBNutwcJmm4t8I4DWFWo6BfJDzKSFtWu3wqZ+Vw2+v2QqHv3xZ2+Aaeafna/nvU/F+tRd1w9UTdWGi2hxkqCDd2D49vUD7ZNZ3zP+UM4e6FVOhsrNzSDDR5dwlLbUp0C7ElxqRiM/JWXRSoq7XGEkNNM6dAlP2RGGl60rHL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715558829; c=relaxed/simple;
	bh=H1GisKjlgVwRDWr5XxMv7Z1n//wdu3bmIf22rOVatCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iWqGh4lFrGPuzfYvQEy/WcQoR4OdNSfGS7PG+f1BWV5rbGSGo632iOMl5jmLycFKE7Hkh3FbmNgEVmlrzG8uXAND3ma95HQkVaStyiSd2Z2t96y7iUFkhm1KFPL9AxFHK/hzlPtKNPkTjW3Hk2nOukOz4Dj4XAfnXT7oCXEYpTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=usta.de; spf=pass smtp.mailfrom=usta.de; dkim=pass (2048-bit key) header.d=usta.de header.i=@usta.de header.b=oH1GcOP7; arc=none smtp.client-ip=129.13.231.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=usta.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=usta.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=usta.de;
	s=kit2; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject
	:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=0Gswv3w1S1fYS6+8jsvjepW4lrye4LrJLlGNWdxWf84=; b=oH1GcOP7bvlFDZFK3JM3kigERg
	O7J8YpXxR2dmBX+1Rt2KTgC2odZE3xcoek9vGPDLBOSrfL5/TUazTpDxPd05esMbQSti+BbW8fJgR
	A5rrDVBbcr32RQkv6eMhx6Rg8TTgFxbLIOLThCLy32ngrvoXK0bg4F3QNeilIRYkJqpv6pwrbj8dE
	WYVfM+cyxP6VHbMbwRXlH4qBajNRe32uMxjvywRK6jcmEvJZP+M7R0HasI/k864PImDVsjaW2SZ0w
	q2NABTx0Sal4c3HSvUhfQRI7yNK0RetJNMb9/sdA2Jmlh6naRVYnL+aS8iEUi1mEUGAYmbWqTJObt
	VRMCu/Vw==;
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
	by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(envelope-from <schwarze@usta.de>)
	id 1s6Ix6-001Fo0-2D;
	Mon, 13 May 2024 01:50:01 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
	by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
	(envelope-from <schwarze@usta.de>)
	id 1s6Ix6-0066m6-AA; Mon, 13 May 2024 01:49:59 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
	(envelope-from <schwarze@usta.de>)
	id 1s6Ix5-00FF4U-Me; Mon, 13 May 2024 01:49:59 +0200
Date: Mon, 13 May 2024 01:49:59 +0200
From: Ingo Schwarze <schwarze@usta.de>
To: Alexis <flexibeast@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org,
	linux-man@vger.kernel.org
Subject: Re: man(7) <-> mdoc(7) (approximate) correspondence table?
Message-ID: <ZkFVp1FAUlYw/eFr@asta-kit.de>
References: <87h6fnwcqv.fsf@gmail.com>
 <Ziy6SLSeanPrcKaW@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ziy6SLSeanPrcKaW@debian>

Hi,

Alejandro Colomar wrote on Sat, Apr 27, 2024 at 10:41:44AM +0200:
> On Sat, Apr 27, 2024 at 04:17:28PM +1000, Alexis wrote:

>> As someone who's much more familiar with mdoc(7) than man(7), is there an
>> approximate 'correspondence table' somewhere that gives at least a rough
>> sense of which man(7) macros to use when, in an mdoc(7) context, one would
>> use a given mdoc(7) macro? Such a table might look something like (to use
>> some obvious probable correspondences):
>> 
>> | mdoc(7) | man(7) | Notes
>> +---------+--------+-------
>> | Lk      | UR     |
>> | Op      | OP     |
>> | Sh      | SH     |
>> | Ss      | SS     |

If you are familiar with the C programming language, you might be able
to use

  https://cvsweb.bsd.lv/~checkout~/mandoc/mdoc_man.c?rev=HEAD

which is a fully automatic mdoc-to-man translator and only 39 kB of code.

Caveat: some tasks are harder to do fully automatically than with the
human mind.  Consequently, that translator for example does not use
the man(7) font macros (like .B and .BR) but uses font escapes instead,
like \fB and \fR.

However, it does produce these, where appropriate:

  HP PD PP RE RS SH SS TE TH TP TS

And the code is ordered according to the mdoc(7) macros,
so you can look up an mdoc(7) macro in the mdoc_man_acts[]
table at the top, then look at what its one, two, or three
handler functions do.  If all three handler functions are NULL,
no man(7) macro is needed, just put the plain text on a text line
in the man(7) file.


> I have similar problems when writing mdoc(7).  What I tend to do is look
> at good (e.g., OpenBSD) mdoc(7) pages' output, and then look at their
> source to see what they use.

Not a bad idea.

In addition, the following alpabetic index may be useful for people
who try to write or maintain mdoc(7) documents:

  https://mandoc.bsd.lv/mdoc/appendix/markup.html

Once you identified a candidate macro in that list, look at

  https://man.openbsd.org/mdoc.7

to learn how to use it.

> I can only recommend you look at pages in the Linux man-pages project,
> and follow what you see (you can ask me if a page is a good reference).
> I try to have them all with perfect source, but there are too many of
> them.

That sounds quite reasonable, too.

Yours,
  Ingo

