Return-Path: <linux-man+bounces-562-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EAC877809
	for <lists+linux-man@lfdr.de>; Sun, 10 Mar 2024 19:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29715281336
	for <lists+linux-man@lfdr.de>; Sun, 10 Mar 2024 18:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38AB39AF3;
	Sun, 10 Mar 2024 18:43:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from a3.inai.de (a3.inai.de [88.198.85.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD8C36AE1;
	Sun, 10 Mar 2024 18:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=88.198.85.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710096202; cv=none; b=JVi0/MOGXcrNpZvznZZ74cxOxrDXj2k/2I93EXp5c7mxz73kIp5m4XkeidBxCbJIttAWYbuvt23yNhm8jXkyp/yQRr/3i6VnnQ20jjw56Sro6x0iVhq1mc9aNt3rZrHBCtDMOrdPoTOab5eSXQPmMocbwDOd/rCNtPT3m7GVIXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710096202; c=relaxed/simple;
	bh=zBb9Ef5c7PbDIZ2e1hxsJDIx7XjNLrc1aFQVXEtXjbg=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=JKgtu2NMxKYk01OvmO18ayWG+rSik/Epfrq8XI6KmNQTJqSaWvmRa5JoSUJJZ+LRDJEHmxB9X3Bt4Zexl7bfCHvbBplBel8FT3FEHhvoLJpdWRQzb0/O4CgC/IbLLtTwsBR26339PQ3AyeC+mm8Yyr8rmXDeBGYpr/S8cXABzR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=inai.de; spf=pass smtp.mailfrom=inai.de; arc=none smtp.client-ip=88.198.85.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=inai.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inai.de
Received: by a3.inai.de (Postfix, from userid 25121)
	id 6385F588E2451; Sun, 10 Mar 2024 19:35:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id 5EE86624921B3;
	Sun, 10 Mar 2024 19:35:09 +0100 (CET)
Date: Sun, 10 Mar 2024 19:35:09 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-fsdevel@vger.kernel.org, linux-man@vger.kernel.org, 
    Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: sendfile(2) erroneously yields EINVAL on too large counts
In-Reply-To: <ZeXSNSxs68FrkLXu@debian>
Message-ID: <q17r66qo-87p4-n210-35n8-142rqn3s04r7@vanv.qr>
References: <38nr2286-1o9q-0004-2323-799587773o15@vanv.qr> <ZeXSNSxs68FrkLXu@debian>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


On Monday 2024-03-04 14:52, Alejandro Colomar wrote:
>> 
>> which sounds an awful lot like the documented EOVERFLOW behavior:
>> 
>>        EOVERFLOW
>>               count is too large, the operation would result in
>>               exceeding the maximum size of either the input file or
>>               the output file.
>> 
>> but the reported error is EINVAL rather than EOVERFLOW.  Moreover, the
>> (actual) result from this testcase does not go above a few bytes
>> anyhow, so should not signal an overflow anyway.
>
>The kernel detects that offset+count would overflow, and aborts early.
>That's actually a good thing.  Otherwise, we wouldn't have noticed that
>the program is missing an lseek(2) call until much later.
>addition of count+offset would cause overflow, that is, undefined
>behavior, it's better to not even start.  Otherwise, it gets tricky to
>write code that doesn't invoke UB.

While offset+count would overflow arithmetically, if the file is not larger
than SSIZE_MAX, that should be just fine, because sendfile() stops at EOF
like read() and does not read beyond EOF or produce extraneous NULs
to the point that a huge file position would come about.

