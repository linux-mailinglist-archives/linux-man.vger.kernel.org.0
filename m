Return-Path: <linux-man+bounces-2123-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A1D9E5F97
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 21:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3330A16BC0B
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 20:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639B61BBBF4;
	Thu,  5 Dec 2024 20:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="Xb5Ct/Ti";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="rmUFylzf";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="a+LkT4zs";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="h/oeH0xm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEABE1ADFF8
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 20:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733431394; cv=none; b=bdXof6j9nhXEqQjahwyYBBrVMtHqjyAHsjbE0YH8uFcvoP+rFm4dxZK0ooyfiIlBrbnLRF+PUlhpVQEO6K+OuMO7x/Af7cUVHAGyPDVA7OCrYLVKnQFYKQ1JOd4/oWu59YDjgIh4KVCxFBZn81WHLUjcJU1OKZxY/1S0Ap1ubyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733431394; c=relaxed/simple;
	bh=vYO9gr89xF0rcaTCUqOqdVQmejs/HnXS11OZprWqkw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oex/7U+875GiFYxYmSmywNvxWrvUi/Wp1fQ2kAMhMnBYwxxu+0HRaiLaSxz0YlEcjpiEkgSIlvKk7JhLyKcTI1j52puVi33Fge5KYGUqrK08jTuQICVddC+NoSWIXhp0eQzs0cxszBG5RdizQYh8t1SbAp52ATjAdrZsriPlWv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=Xb5Ct/Ti; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=rmUFylzf; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=a+LkT4zs; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=h/oeH0xm; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id D8F331F393;
	Thu,  5 Dec 2024 20:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1733431390; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=YSUEtsJVZy0N3/YwQVbI/IS2CnubB/SmBJsqGfquHFA=;
	b=Xb5Ct/Ti06DNQVZNsnr9vggxYcJJcK1wWiOlSZEIA1aLzPzeaajYw9NxU1fAqNWpN/I5jX
	9sF//fDwb2KbLuFH6pFK2IjWxgIcpvNt0PDeLHmDe7vrlYUIOf35fsp+gQSo7qNjrdJ0mY
	kkY2qBe4fLIqQNAGTS7Y8o1N44SSScw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1733431390;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=YSUEtsJVZy0N3/YwQVbI/IS2CnubB/SmBJsqGfquHFA=;
	b=rmUFylzfs01e2UzXEn7vnd8W1L9iflHbrAZIu2dFMV+rdJ9BfFMC1w03L0xDEtYk1SRdft
	kv52dCBlhG4dQVAg==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=a+LkT4zs;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b="h/oeH0xm"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1733431389; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=YSUEtsJVZy0N3/YwQVbI/IS2CnubB/SmBJsqGfquHFA=;
	b=a+LkT4zsUuDJe6llodz+h3529dICYsUSKkv0o7kcqFFZ/dWf3veG5+GjJ3B9/0cFf/2go4
	ZiEBHRVdZgjJGNXA0wcc2M/e+1gKYz8pwYVu2Aj+DM0HKjVSnT5XErMbanV7lapqUTozY5
	FYAIxnvxs/HPDPfxb+AtM99Mluwh+OQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1733431389;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=YSUEtsJVZy0N3/YwQVbI/IS2CnubB/SmBJsqGfquHFA=;
	b=h/oeH0xmWXm9DOSCP52uT6UTN0Y2F0CkOIA7nbPm5QULW7X92VJLm1NnI6qhwNh4IEIQfF
	MkvsSwGYE3e7ynDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C0828132EB;
	Thu,  5 Dec 2024 20:43:09 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id fkkuLl0QUmfZUQAAD6G6ig
	(envelope-from <vbabka@suse.cz>); Thu, 05 Dec 2024 20:43:09 +0000
Message-ID: <01514d6a-5b8f-4a38-8c08-7cacede47f67@suse.cz>
Date: Thu, 5 Dec 2024 21:43:09 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Content-Language: en-US
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>,
 "Liam R . Howlett" <Liam.Howlett@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, Jann Horn <jannh@google.com>,
 linux-mm@kvack.org
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <b9f4f985-771e-4f09-a87f-d56f898e8d39@suse.cz>
 <e71ad8a2-3dc7-44bd-97e5-fed6eaa30d55@lucifer.local>
From: Vlastimil Babka <vbabka@suse.cz>
Autocrypt: addr=vbabka@suse.cz; keydata=
 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
 EP+ylKVEKb0Q2A==
In-Reply-To: <e71ad8a2-3dc7-44bd-97e5-fed6eaa30d55@lucifer.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D8F331F393
X-Spam-Level: 
X-Spamd-Result: default: False [-4.51 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oracle.com:email];
	DKIM_TRACE(0.00)[suse.cz:+]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.51
X-Spam-Flag: NO

On 12/5/24 19:09, Lorenzo Stoakes wrote:
> On Thu, Dec 05, 2024 at 06:50:09PM +0100, Vlastimil Babka wrote:
>> On 12/5/24 11:41, Lorenzo Stoakes wrote:
>> > Lightweight guard region support has been added to Linux 6.13, which adds
>> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
>> > call. Therefore, update the manpage for madvise() and describe these
>> > operations.
>> >
>> > Reviewed-by: Jann Horn <jannh@google.com>
>> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>> > ---
>> > v4:
>> > * Reference function chapters as per Alejandro.
>> > * Minor rewording as per Alejandro.
>> >
>> > v3:
>> > * Don't describe SIGSEGV as a fatal signal as per Jann.
>> > https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle.com
>> >
>> > v2:
>> > * Updated to use semantic newlines as suggested by Alejandro.
>> > * Avoided emboldening parens as suggested by Alejandro.
>> > * One very minor grammatical fix.
>> > https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com
>> >
>> > v1:
>> > https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com
>> >
>> >  man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
>> >  1 file changed, 93 insertions(+)
>> >
>> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
>> > index 4f2210ee2..7d682fa40 100644
>> > --- a/man/man2/madvise.2
>> > +++ b/man/man2/madvise.2
>> > @@ -676,6 +676,91 @@ or secret memory regions created using
>> >  Note that with
>> >  .BR MADV_POPULATE_WRITE ,
>> >  the process can be killed at any moment when the system runs out of memory.
>> > +.TP
>> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
>> > +Install a lightweight guard region into the range specified by
>> > +.I addr
>> > +and
>> > +.IR size ,
>> > +causing any read or write in the range to result in a
>> > +.B SIGSEGV
>> > +signal being raised.
>> > +.IP
>> > +If the region maps memory pages they will be cleared as part of the operation,
>> > +though if
>>
>> Hm this reads a bit ambiguous. One could read it as the memory pages are
>> being cleared, but it's the page tables.
> 
> This was really hard to word, because you don't want to say unmapped, and saying
> 'clearing page tables' or 'zapping' is clear to us but not necessarily to a
> reader. 'Clearing mapping' makes it ambiguous vs. munmap(), etc. etc.

Maybe saying "removed" instead of "cleared" would be better?

Anyway, I don't want to cause bikeshedding, so in any case:

Reviewed-by: Vlastimil Babka <vbabka@suse.cz>

> But you want to make it clear (no pun intended) that anon pages, if there's any
> data, it's probably lost. So I think this is a distinction that doesn't matter.
> 
> Will revisit once we support file-backed mappings.
> 

