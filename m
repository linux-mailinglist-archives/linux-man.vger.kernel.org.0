Return-Path: <linux-man+bounces-1630-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F35959E44
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 15:12:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED7A21F23599
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 13:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B6D919993D;
	Wed, 21 Aug 2024 13:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b="RV2hvcqk"
X-Original-To: linux-man@vger.kernel.org
Received: from succinct-culhwch.relay-egress.a.mail.umich.edu (relay-egress-host.us-east-2.a.mail.umich.edu [13.59.128.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE90199942
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 13:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.59.128.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724245926; cv=none; b=EBhUQi9k1WgM0ugxYxK0w9TKMGbYA24buSN/JrMCK1SFk2Yu8NZTJcN4P4+cAUZYDd72ysnLp5gVlxodsTfk5c3oy3KUj9X4lGPyCDoGMs+CtCEcpI/pEvWkmyeWunD/l9t6XDlssSFbpR6Kx4ABgiX48aEjpG6l3TF6ruFqAvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724245926; c=relaxed/simple;
	bh=2XBUzx2nKOO+db8uGbiSORkO50TevgztopJyEQzG3CE=;
	h=To:cc:From:Subject:In-reply-to:References:MIME-Version:
	 Content-Type:Date:Message-ID; b=HkguqbrGsVXwLLUlFLDMtdRKn+5iS2gsj6kXCHky2Td1IJ7JfF+kktyN/cEGs8IbQ/jBVHa/AB7i5etTAsu+idzA1cyOD+eDNY7XGV7JWLL/YoDOfGWZcpQxac0o4Y8In0YimUbEgC1q13Upa8wXtestr56Coy52Dh1W/IF4Sh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu; spf=pass smtp.mailfrom=umich.edu; dkim=pass (2048-bit key) header.d=umich.edu header.i=@umich.edu header.b=RV2hvcqk; arc=none smtp.client-ip=13.59.128.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=umich.edu
Received: from abundant-redcap.authn-relay.a.mail.umich.edu (ip-10-0-72-228.us-east-2.compute.internal [10.0.72.228])
	by succinct-culhwch.relay-egress.a.mail.umich.edu with ESMTPS
	id 66C5E717.1C6E2B7B.65A4DF91.3906611;
	Wed, 21 Aug 2024 09:09:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umich.edu;
	s=relay-0; t=1724245783;
	bh=5suJrS1z6EIh8ivF0nBFEAvPT1oj1gLmoHhQTsxobCw=;
	h=To:cc:From:Subject:In-reply-to:References:Date;
	b=RV2hvcqkWGnPN+F3Qnegm2T1ElcxeNpkzrGu7gbV69CgBNjer64h1xfpAjc5r1S3F
	 0kkNy3vC03okPogSYmic7Fc5IkihJSwraypFdDmufQh+Azqq2PPXmD3+onxGhw8bNe
	 vJf/1e2KYpPw9x3UwijF4NqEfIuFJ8IXZPlBcEDtExDBGO5w3TMKzxYKsDfiBP+q8J
	 kowOLh4wPkFr2WBQb8YugTvQ7XIfVq62tm4wdRdw9oVN9i9JvQ4MHAAgKIpqqBHQU9
	 8iUF5Fd0kRKMMEPSu6l3EK5t0/XYao0gCvgl5Gbp3dE/VsYk17S+3AKbV2bqVJi4BB
	 CSNYxr+N12HEQ==
Authentication-Results: abundant-redcap.authn-relay.a.mail.umich.edu; 
	iprev=fail policy.iprev=85.108.143.146 (Mismatch);
	auth=pass smtp.auth=minshall
Received: from localhost (Mismatch [85.108.143.146])
	by abundant-redcap.authn-relay.a.mail.umich.edu with ESMTPSA
	id 66C5E715.3AF28A2F.41ADEE9.346864;
	Wed, 21 Aug 2024 09:09:42 -0400
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
From: Greg Minshall <minshall@umich.edu>
Subject: Re: getaddrinfo_a man page: add notification example?
In-reply-to: <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj>
References: <728184.1724230207@archlinux> <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj>
Comments: In-reply-to Alejandro Colomar <alx@kernel.org>
   message dated "Wed, 21 Aug 2024 12:36:14 +0200."
X-Mailer: MH-E 8.6+git; nmh 1.8; Emacs 31.0.50
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <739468.1724245777.1@archlinux>
Date: Wed, 21 Aug 2024 16:09:37 +0300
Message-ID: <739469.1724245777@archlinux>

Alex,

thanks for the response.

> I think examples are great in the manual pages (I wish we had at least
> one example in every page).
> 
> If you can provide an example for those features, it could be good.  Do
> you think it would fit in the existing examples, or maybe it's better to
> add a separate new example?

unless you or someone thinks otherwise, i would first try to see if i
can make the notifications sit naturally inside the current asynchronous
example.  i think they will, but maybe they won't.

if that doesn't seem to work, i can try to slim down my current code,
convert to getopt(3), etc., and see if you think the results would work
as an additional example.

cheers, Greg

