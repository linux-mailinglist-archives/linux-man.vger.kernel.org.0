Return-Path: <linux-man+bounces-5585-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGeUE8hBEmqBxAYAu9opvQ
	(envelope-from <linux-man+bounces-5585-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2026 02:09:44 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E14A85C0F45
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2026 02:09:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 708F63015449
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2026 00:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F84F168BD;
	Sun, 24 May 2026 00:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="Gz2Mjnyy";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="P66W112j"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-b8-smtp.messagingengine.com (flow-b8-smtp.messagingengine.com [202.12.124.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083EEE555;
	Sun, 24 May 2026 00:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.143
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779581298; cv=none; b=S4hBtfvxIZvi+qPzaORzzz5Dkjf1is6iJlBhFL1NiOHzULD5h8QHXVMMmQUstX2ghaz6hw39fGQVx6wT5poZLlojqPx5yMaNZkuVvF9Ht/O6NI1qBuTwjg94WlAqJ+orsdwwWBtsPbKEEt+U3gkkPpbMH0+soBi/NbM70WGA3Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779581298; c=relaxed/simple;
	bh=ibOXMmyPy1OAlADs6YJhAT6SpQm5cY3R9sMM7pbe7A0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eMe6+63QAEl5gT5goUS+HWTQwYoBC+Cd6yUf6kCSvacIZgifG4GPLUKVeT69W+GZkhhdLyleD3Njk/P4z6UVXKKn1u6WDWp2xmX2xUDDmPrcsSb6HGYab/lzwnsXlrCgxTEMlWKmxKWfLT/0ynaSQIAFX63xHgnX72DUClYcfJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=Gz2Mjnyy; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=P66W112j; arc=none smtp.client-ip=202.12.124.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailflow.stl.internal (Postfix) with ESMTP id 932CD130006C;
	Sat, 23 May 2026 20:08:13 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Sat, 23 May 2026 20:08:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779581293; x=
	1779588493; bh=bOW3L8R72QTY5Nd5WS70HCXZ0iclOnm9lq7EioHVhjE=; b=G
	z2Mjnyy3ZUQAyP+kZpFy4wEXbtv0zxxnMI6FV69F+8GKCYhtKaiDlsMJG7jY9awP
	odBNaWeImYySll7F/C1d34/zqHhu+qsMrTtmOfbsxdZk+hayWEt6AoBrYTPQH26d
	aeHldZrblVRhSCJu147s35HSgt7FXr6ofwCOTH0r5Sd2fWvcBSYwbC5sKbZZpowV
	ekwysBPN/34GBSaXKCFJDSkLrv3Iierrpn8VldIcS5bRmtl85SmCKBI2RG6vbs4O
	Vn1Y2uSKbdFZ3VIv7kmp/puc9kRBTQZLpCg0x969TJJr/DdmwZ0AAF8EoW2zo3jv
	ILqCxHY2SrYJbagitsVgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1779581293; x=1779588493; bh=bOW3L8R72QTY5Nd5WS70HCXZ0iclOnm9lq7
	EioHVhjE=; b=P66W112jOXxtTt1/jIy4NYcASQN652h2lmLJHJxnzyIkd6LSDHS
	q+9rbiNxvG0zVVExqVdFthlE4GioU4qqIFcKXHiaR/ZevjEkAZruUCSxUTLx9nUS
	cg7LdRV0lxscEx2CiIFFFjre5ByxgXPsrviUlnoNTeMR35vDjoblNmgyNMoiGl48
	CLN2lJbQq+P+WvI0Y6u6pKkkvK/W3dOm4rc81VUKX2ExdlVi/+M0r6LBJZRvTzq/
	PLlHafce62O8Ae7clkqIbWNoHKA6fOdUzOnzQj85aZPxpbVOdw4X1svwMWxcCetE
	S57k0MBOGDhp7iwPkzeynimC1BgTWRIXdpg==
X-ME-Sender: <xms:bEESaughE1L8wNAw6-Tboi_OTEbrkiBPfWphC1gVg1RQ0KrCDmoFUw>
    <xme:bEESatfw7OYcKZuldoKZDe_ZkA6LtlHFpKmNTkcclHawnla2-c5qAYXlfJUrW4bl2
    DH3PD5U6wdkFSy4Vq9eVmGtMo2rnyzUuOfqrBnmoc4fvupH3E7v704>
X-ME-Received: <xmr:bEESatM85Kp8Ys-ayUtcBSyAEHje2dFDj7owp50PnBRNkrl7PRqsbpsYMjNjZw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduheeggeeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefmihhrhihlucfuhhhuthhsvghmrghuuceokhhirhhilhhlsehs
    hhhuthgvmhhovhdrnhgrmhgvqeenucggtffrrghtthgvrhhnpeeiveekgedugeetjefgue
    egjeejkeetvdeuvdeifffftdfhvedvffeuieegleegvdenucffohhmrghinhepkhgvrhhn
    vghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepkhhirhhilhhlsehshhhuthgvmhhovhdrnhgrmhgvpdhnsggprhgtphhtthhopeeh
    tddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprhhpphhtsehkvghrnhgvlhdroh
    hrghdprhgtphhtthhopegrkhhpmheslhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhg
    pdhrtghpthhtohepphgvthgvrhigsehrvgguhhgrthdrtghomhdprhgtphhtthhopegurg
    hvihgusehkvghrnhgvlhdrohhrghdprhgtphhtthhopehljhhssehkvghrnhgvlhdrohhr
    ghdprhgtphhtthhopehsuhhrvghnsgesghhoohhglhgvrdgtohhmpdhrtghpthhtohepvh
    gsrggskhgrsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihgrmhdrhhhofihlvght
    thesohhrrggtlhgvrdgtohhmpdhrtghpthhtohepiihihiesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:bEESaq0skpAwg1PDaGi8DjW_QLmZtPVZCUawJOQjS0k8IqvCgw_WBA>
    <xmx:bEESavKPwDlFOe7kGEZEbtj_Uc_XsLeXS-q16eVt-Aw1hmkTnjbnZQ>
    <xmx:bEESajZrCvLqVpD38kQ94zW1JHxmFlUZkVDJOddnEjnU-6y2pADqmQ>
    <xmx:bEESagnduI5E4gsBSx_8kraDKWUi1jSseknqfEBu3ikHn6oihztVYw>
    <xmx:bUESahUyLmGaTkuebIyTdGRJozup0-YDPiaBE8kJpo5RZGkYcDDzF81d>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 23 May 2026 20:08:12 -0400 (EDT)
Date: Sun, 24 May 2026 01:08:11 +0100
From: Kiryl Shutsemau <kirill@shutemov.name>
To: Mike Rapoport <rppt@kernel.org>
Cc: akpm@linux-foundation.org, peterx@redhat.com, david@kernel.org, 
	ljs@kernel.org, surenb@google.com, vbabka@kernel.org, Liam.Howlett@oracle.com, 
	ziy@nvidia.com, corbet@lwn.net, skhan@linuxfoundation.org, seanjc@google.com, 
	pbonzini@redhat.com, jthoughton@google.com, aarcange@redhat.com, sj@kernel.org, 
	usama.arif@linux.dev, linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, kvm@vger.kernel.org, 
	kernel-team@meta.com, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [PATCH v3 15/16] userfaultfd.2: Add read-write protect mode
Message-ID: <ahJBTaobKD9XdT33@thinkstation>
References: <20260522133857.552279-1-kirill@shutemov.name>
 <20260522133857.552279-16-kirill@shutemov.name>
 <ahGDbKr2u6sqoc3f@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ahGDbKr2u6sqoc3f@kernel.org>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5585-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,shutemov.name:dkim]
X-Rspamd-Queue-Id: E14A85C0F45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 23, 2026 at 01:37:32PM +0300, Mike Rapoport wrote:
> On Fri, May 22, 2026 at 02:38:56PM +0100, Kiryl Shutsemau wrote:
> > From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>
> > 
> > Read-write protect mode (UFFDIO_REGISTER_MODE_RWP) is supported starting
> > from Linux 7.2. It traps every access -- read or write -- to a present
> > page within a registered range. The matching UAPI consists of:
> > 
> >   - UFFDIO_REGISTER_MODE_RWP   registration-mode bit
> >   - UFFD_FEATURE_RWP           capability bit
> >   - UFFD_FEATURE_RWP_ASYNC     async (in-kernel) fault resolution
> >   - UFFDIO_RWPROTECT           install / remove RWP on a range
> >   - UFFDIO_SET_MODE            runtime sync/async toggle
> >   - UFFD_PAGEFAULT_FLAG_RWP    new pagefault.flags bit
> > 
> > Document the new registration-mode entry, the "Userfaultfd read-write
> > protect mode" section, the new pagefault flag, and a VERSIONS line.
> > 
> > Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> > ---
> >  man2/userfaultfd.2 | 147 ++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 146 insertions(+), 1 deletion(-)
> 
> This doesn't apply to the current man-pages tree
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
> 
> and reading raw groff hurts eyes too much.
> 
> What linux-man tree did you use to generate those?

Ughh.. Used old github mirror. Will rebase.

-- 
  Kiryl Shutsemau / Kirill A. Shutemov

