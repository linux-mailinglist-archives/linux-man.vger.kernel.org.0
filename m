Return-Path: <linux-man+bounces-174-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCCE7FA900
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 19:35:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB536281799
	for <lists+linux-man@lfdr.de>; Mon, 27 Nov 2023 18:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4D23457B;
	Mon, 27 Nov 2023 18:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=owlfolio.org header.i=@owlfolio.org header.b="kqxyoWle";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="QUvWQ89N"
X-Original-To: linux-man@vger.kernel.org
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 637DFA1
	for <linux-man@vger.kernel.org>; Mon, 27 Nov 2023 10:35:25 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id F0D635C0350;
	Mon, 27 Nov 2023 13:35:22 -0500 (EST)
Received: from imap45 ([10.202.2.95])
  by compute5.internal (MEProxy); Mon, 27 Nov 2023 13:35:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1701110122; x=1701196522; bh=xV
	bBZIDCE3DZg64T7eM3C6A5zkSZbm5f9TtC9JuvfK8=; b=kqxyoWleKdNLDM4YqK
	y+DghbRUJveuCEonO2VgPHGaR74agtc1AOdB8+B/62+s0mNe9hVMacZVqoZIqDUX
	4D1HgeSo9gZHm2yJwVPhUi66usHD6Bq+H7eyY+IwcHGw8fDG7+utuUpoYr9krP7e
	Zp87wrwpUei9oCAQXsgFK5DUNhh3jj8by3NQvAVX1Yw2snOp/4vhAQbnLlulF3Fr
	qTD4lfY+pxS9Z5E7XxmAETs1qneqTzPpCI7nupQlFfDCM+RTvM1bSLBBB1DFIVU5
	dyR7Z6Cxsxya5WD6M8c6eaieGd4JUq7Na9JELLqO37lZKmxHICPQgH7165SDAclU
	46kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1701110122; x=1701196522; bh=xVbBZIDCE3DZg
	64T7eM3C6A5zkSZbm5f9TtC9JuvfK8=; b=QUvWQ89NSKMGYkKQOOqaiSMfBYS2w
	JhbSflwkSrsvqSPfHLbhezlnz7/ViQgLs6T+F7RiGvubROGh0nqzySQo+UzTHhLo
	141MQHQ9iiOgUOoXPs0FOKQ8H7uLatcKU8klgkI4HtPBxC7Eh3jNAhpXobmqG+LI
	yAnb4wquzmFrEWXHfbRmjxgMr0tzQW+82+rbaqzmUKkdmI7ySCeFold3VLCbwEDz
	ZNUFrWzVn1u6/vgXGPNp/CYg+e4e+lMMRJSzORW8KLUI5N8TBDY3lM/fLXc9+Am+
	lpF+uRDMYT9bDTjwvswpw22/es/uupKQDn4DIRds2IUJ2z/tpAnfd6hUQ==
X-ME-Sender: <xms:auFkZXWYXXXlV95RcOe5fvWQ9LP97WG-SL-o1pPY7zdtCsA1ATsIxw>
    <xme:auFkZfkjpVmuylAXGaLJ5uPNLemwompGtH4YckeETtGOHFHCYjizav3f5yV6psuhB
    JIJs6gUAqsEehLo7CY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdgk
    rggtkhcuhggvihhnsggvrhhgfdcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenuc
    ggtffrrghtthgvrhhnpefhleefheduhfelgeehgeejveehueeihedvgfeuueetteelieei
    teehfefhleduieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpeiirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:auFkZTZfjph9afUAzmgZ5YRxAGBj_ItILvp99xKy-rYQMBZ4Z5E61A>
    <xmx:auFkZSV61LycZEeEtvOJOrdUu0hvE-szo66h2REmhg8PDAeXaTC-XA>
    <xmx:auFkZRkElTjxZQqzFZ3XoGL-8L80qUp7LK9Yvcjm-W5GMEj_s4G2-Q>
    <xmx:auFkZaCIblwCdXWJBgBDvJBYuJLQ_ivaQV2e92zJNc7BM-TGiHt8mw>
Feedback-ID: i876146a2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id A5D32272007B; Mon, 27 Nov 2023 13:35:22 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1234-gac66594aae-fm-20231122.001-gac66594a
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <fb98e033-0bed-4f8c-b33e-e22961e81132@app.fastmail.com>
In-Reply-To: <20231127165936.ninh5gm6jvea76nj@illithid>
References: <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian> <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian> <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian> <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy9qNSzok2Dtf_N@debian>
 <4a9a3209-ad1f-44be-b0bf-bba23a9cb085@app.fastmail.com>
 <ZWSw6gX2iqOv5xHN@debian> <20231127165936.ninh5gm6jvea76nj@illithid>
Date: Mon, 27 Nov 2023 13:35:01 -0500
From: "Zack Weinberg" <zack@owlfolio.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 "Alejandro Colomar" <alx@kernel.org>
Cc: "Jonny Grant" <jg@jguk.org>, "Paul Eggert" <eggert@cs.ucla.edu>,
 "Carlos O'Donell" <carlos@redhat.com>,
 "GNU libc development" <libc-alpha@sourceware.org>,
 'linux-man' <linux-man@vger.kernel.org>
Subject: Re: catenate vs concatenate (was: strncpy clarify result may not be null
 terminated)
Content-Type: text/plain

On Mon, Nov 27, 2023, at 11:59 AM, G. Branden Robinson wrote:
> At 2023-11-27T16:08:17+0100, Alejandro Colomar wrote:
>> On Mon, Nov 27, 2023 at 09:33:56AM -0500, Zack Weinberg wrote:
>> > [English pedant mode on]
>> >
>> > "Concatenate" is the correct term; "catenate" means something
>> > completely different, probably "hang between two posts like a
>> > chain".  You can't chop prefixes off a Latinate word and have it
>> > still mean the same thing.
>
> In some cases, you can.  Witness the case of "flammable"/inflammable",
> which are synonymous.

Yeah, and (after seeing Alejandro's reply) I did look up both
"concatenate" and "catenate" and find that they are synonymous in
English and both are attested from the 1600s.

**But I had to look that up.**

I cannot recall ever encountering the word "catenate" prior to this
thread, and my knee-jerk reaction was "typo."  Based on actual
experience trying, and mostly failing, to teach college undergraduates
to read man pages, I believe someone new to English technical
documentation would have a different, much more troublesome knee-jerk
reaction: "There must be some subtle reason why this documentation is
using an unfamiliar term 'catenate', instead of 'concatenate' that I
already know." Followed by wasting a bunch of time trying to research
that unfamiliar term, and when they find it's an exact synonym, adding
another tick mark to their mental tally for "manpages are badly written
and hard to understand."

> Man pages are specialized technical literature demanding a bespoke
> vocabulary.  Some employment of jargon is inescapable, even necessary.
> In any case, "catenate" has ~50 years of attestation in this domain
> alone, which constitutes approximately the entire history of Unix
> discourse.

This is no excuse.  Specialized technical jargon is only appropriate
when there is an actual difference in meaning.  (Thus, your "open
source" vs "free software" counterpoint is bogus.)

> Zack also overlooks the process by which speakers and readers of a
> language grapple with unfamiliar words that they encounter
> unexpectedly. Before undertaking to reach for dictionaries (online or
> otherwise), many readers morphophonemically analyze them to see if
> they can infer their meanings from familiar components.[4]

In grappling with general literature, yes.  In grappling with technical
writing, *no*, and again I am speaking from direct experience as an
educator.  Readers who encounter an unfamiliar word in technical
documents will most probably assume that the word has a precise meaning
that they must learn, and that they *cannot* deduce that meaning from
context. If they can't find a definition -- and they might not even try
looking in a general dictionary, since they may assume that the relevant
definition is too specialized to appear there; also it seems to me that
schoolchildren are not being taught how to use dictionaries anymore --
*they will give up on the entire document*.

Yes, this is bad.  It's an instance of learned helplessness, and it's
going to take decades and major educational reform at the grade-school
level to fix.  But there's one thing we, authors of technical documents,
can do about it right now, and that is embrace plain talk.  For example,
whenever there really is no difference of meaning, the most common word
in general usage is the word that should be used.

> In Unix culture, one will need to remain conversant with the term
> "catenate" to know why cat(1) is not named "concat(1)".  ;-)

This is how I would teach it: 'concat' is too long for Kernighan
and Ritchie's 1970s (or more precisely ASR33) tastes; 'con' was already
in use as an abbreviation for 'console' (not in Unix itself, but in
other contemporary OSes); and 'cat' is the next three letters of
"concatenate".  So that's what they picked.

zw

