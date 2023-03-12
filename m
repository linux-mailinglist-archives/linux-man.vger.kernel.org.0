Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 155BF6B6369
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 06:47:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjCLFrV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 00:47:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCLFrU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 00:47:20 -0500
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A66084109B
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 21:47:17 -0800 (PST)
Received: (Authenticated sender: schoen@loyalty.org)
        by mail.gandi.net (Postfix) with ESMTPSA id 1DC22100002;
        Sun, 12 Mar 2023 05:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=loyalty.org; s=gm1;
        t=1678600036;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=LqMewA5QOJeTH6JZZf6Go6z8Kux/ALEiW2pN7ZgVjBY=;
        b=R7EKOYlzenp3Atfic8qbZoPb8B7xEY4yqsXJUUN7Q6SJcS00LS1lcMeL1vcnElYaw0N25F
        er2dvhZbY5uNTfqJhcmeeR6q01cv68GJPVqlLSO4a5Uy2mNPHtfAvUqnyuuquZ1zK1iE4l
        pmMktM9CAeuoWlwmva8r7PcYZ79kLKIXPHURbpgqBvmqzD8JIVLiftX6mMjaM2roGopi/n
        lEe7rpZCpKVF1YepG+FgVrnMN7cJ8mtg+YDPi0UyTJ6x+OIKkhXV/aIrubFvkyY+GX7hXO
        C/rSh8fvm631W0XiiTk77MAn8e61ANKmVLB1m6W8fABQDzEdmKXUZTx8MSy91g==
Date:   Sat, 11 Mar 2023 21:47:10 -0800
From:   Seth David Schoen <schoen@loyalty.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Dear linux man-pages maintainer,
Message-ID: <20230312054710.GB441010@demorgan>
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
 <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
 <20230312052006.GF7927@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230312052006.GF7927@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Helge Kreutzmann writes:

> Sigh, learning more and more the finer details of English.
> 
> I just wonder, since these are technical documents, if this is
> supporting understanding or reducing it? Personllay I prefer one word
> for one concept.

There's a commonly-suggested rule in style guides that "open" compound
nouns (those still written as multiple distinct words) should be
hyphenated when used to modify another noun, but not when an open
compound noun occurs as a noun by itself.

So for example, we might have "Richard Stallman wrote several
free-software licenses", but "Richard Stallman originated the modern
concept of free software".

This is described, for example, at

https://www.merriam-webster.com/words-at-play/hyphen-rules-open-closed-compound-words

although this source is less prescriptive and definitive than some
others.

That source also describes a trend where newly-coined English compounds
are usually regarded as separate words for some time, but people
increasingly see them as single words (with a multiword etymology) after
acquiring greater familiarity with them.  In this case, it seems that
the man page editors feel that "run level" is too unfamiliar or recent
as a technical term to be widely understood as a single word (so my
intuition -- that it could be a single word -- is, in a way, further
along in the process).  The Merriam-Webster article seems to imply that,
after a few more decades, more people may become comfortable with
"runlevel" as a single word, assuming we continue to use that same term
frequently for the same concept.

The hyphenation rule for an open compound (in the sense described in
the Merriam-Webster article) modifying another noun, as opposed to an
open compound standing alone as a noun, is not completely universal and
might not be understood by all English learners, but it's a rule that's
very, very commonly suggested by teachers and grammar references.  It
would not be uncommon for both native and non-native English speakers to
have been taught some version of this rule in school at some point.

We might sort of analogize it to the German rule for the case where a
proper name is used as a part of the proper name of something else
(like a street, school, or prize).  There German expects to hyphenate
the entire resulting phrase, like

Heinrich-Böll-Preis
Kaiser-Wilhelm-Universität
Karl-Marx-Allee
Käthe-Kollwitz-Preis
Max-Ernst-Stipendium
Richard-Strauss-Straße
Sankt-Johann-der-Täufer-Kirche

even though the original proper names (Heinrich Böll, Kaiser Wilhelm,
Karl Marx, etc.) aren't hyphenated when used in their original sense to
refer to _people_.  While this English rule isn't exactly the same,
it also shows a propensity for using a hyphen when a noun is used in
one context, but not when the same noun is used in a different context.
