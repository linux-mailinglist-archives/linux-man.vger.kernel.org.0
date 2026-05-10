Return-Path: <linux-man+bounces-5485-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHK4GJzrAGrdOQEAu9opvQ
	(envelope-from <linux-man+bounces-5485-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 22:33:32 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF795063E8
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 22:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 720F3300A769
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 20:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECA952D949B;
	Sun, 10 May 2026 20:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="UZ3EZ7fU"
X-Original-To: linux-man@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60493282F3F
	for <linux-man@vger.kernel.org>; Sun, 10 May 2026 20:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778445209; cv=none; b=G3TmVo9R4VvemLjJ8eqKw2ASUkSQtmwMAGuHkca2xqXqLmSa4X3mbP5kNOSTnsz14sESejBBatV86+0q1Bz7ykUDD8h/hGnEGNSxuqdAbsJPhFXqGoI8Oa42P0Bdvqqy3gpQJ7rBe1sjugDCkbnFoSCOjTomZleixookqk3CxLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778445209; c=relaxed/simple;
	bh=BK8tnca2BsVfIm6/sAUYCdFHp6PSdEaDVvs3smNaanE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JQRCJhwjyd53CRQoT15J37Y0KRd/C1K3sp4+8hkyNkX7xXFrE1lBdWhNOhTmeFKRy63Wpa/Ntu0V++6HQ55+rFcH0f7QqjX30KWA2a//ZSkF0a47al10BW1RutQ80/ZmKTONnRmqBXGA+CeKMa03wwcSfXkHRikw4F5fAfZ0OsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=UZ3EZ7fU; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description;
	bh=JdPtO91U8tiddOJZITcZQxE4aAw8Ek8bO9MtUYYqU0I=; b=UZ3EZ7fU7IeeBAKypnNkAf+yQ9
	9ZHpQ2QyJy2EkUmFUaxjpkW2GRa69NRhclnBVqJ2p0JWJ7mjB30kuWSMPmRg+4m6+j2C/8MBxinEF
	NQlW8tQst5Cwog2YSjW/Hdh9MwRURMI1w8rF4TnyfJ3vEsK5LKyk8CN8RauclI8Yjr4oUcqhkXhAg
	5uR0Sj+vDhMHWgl6jVvE1oEluFvHXDp4Z7541Rc/0Lv3Uh9gi1nNrhKBNjBl4mnbaAZ2ga0ysyqPs
	u12wPlB7PX0Y6J+Bf2+cIuRfQN6LrHBMsUOeRnUtjNiRDG0o/L+BOhaeNnN58bGPNpFCD7b8boJnB
	res45U/A==;
Received: from guillem by master.debian.org with local (Exim 4.96)
	(envelope-from <guillem@master.debian.org>)
	id 1wMAq0-001ufs-0N;
	Sun, 10 May 2026 20:33:20 +0000
Date: Sun, 10 May 2026 22:33:18 +0200
From: Guillem Jover <guillem@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding
 issues
Message-ID: <agDrjs5bEN5zUvIM@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@debian.org>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20260510172205.350001-1-guillem@debian.org>
 <agDTy5k6VTRhtBAS@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <agDTy5k6VTRhtBAS@devuan>
X-Rspamd-Queue-Id: BBF795063E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[debian.org,none];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.master];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5485-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guillem@debian.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[debian.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi!

On Sun, 2026-05-10 at 20:53:01 +0200, Alejandro Colomar wrote:
> On 2026-05-10T19:22:04+0200, Guillem Jover wrote:
> > From: Guillem Jover <guillem@hadrons.org>
> > 
> > It make sense to use this file to fix spelling and encoding issues that
> > otherwise show up when checking the git history. It also makes sense to
> > honor name changes for people, to avoid dead naming or similar. As well
> > as fixing up local mail addresses that have never been valid.
> > 
> > It makes less sense to remap valid addresses at the time of submission
> > that represented a specific hat or organization, where the person is
> > no longer affiliated with, because that breaks the historic trail and
> > provenance of the changes. And is what require a continuous update
> > burden, which seems to have been the reason for the removal with
> > commit 2231a1659621d281a2fbb0d75bad5bccce538f96.

> Hmmm, to be honest, I don't know what to do with this patch.  I might or
> might not take it; I'm undecided.

> Out of curiosity, what were you looking at, that lead you to writing it?
> :)

I've had this change lost in a local branch for some time, and noticed
while going over pending changes for the recent submission. And found
about the file deletion during rebasing it.

The original reason was the same as now, when doing things like:

  git rlog
    (alias for «log --format=format:\"%h %Cblue%ai%Creset %aN %Cgreen%s%Creset %C(auto,brightyellow)%(decorate)%Creset\"»)
  git shortlog -s

Or other stuff involved history digging, you get wrongly encoded
output.

Assuming you have concerns about maintainability I think it would be
fair to state somewhere (either in the contributing docs, or perhaps
even in the .mailmap file) what are the acceptable entries there, to
mitigate that concern.

Thanks,
Guillem

