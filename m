Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7217A407DD3
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 16:47:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231693AbhILOsg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 10:48:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbhILOsg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 10:48:36 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D18B8C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 07:47:21 -0700 (PDT)
Received: from hekate.asta.kit.edu ([141.3.145.153] helo=hekate.usta.de)
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (envelope-from <schwarze@usta.de>)
        id 1mPQlL-0004xD-CD; Sun, 12 Sep 2021 16:47:19 +0200
Received: from donnerwolke.asta.kit.edu ([141.3.145.61] helo=donnerwolke.usta.de)
        by hekate.usta.de with esmtp (Exim 4.92.2)
        (envelope-from <schwarze@usta.de>)
        id 1mPQlK-0006Mj-QT; Sun, 12 Sep 2021 16:47:18 +0200
Received: from athene.asta.kit.edu ([141.3.145.60] helo=athene.usta.de)
        by donnerwolke.usta.de with esmtp (Exim 4.84_2)
        (envelope-from <schwarze@usta.de>)
        id 1mPQlK-0005zc-N0; Sun, 12 Sep 2021 16:47:18 +0200
Received: from localhost (athene.usta.de [local])
        by athene.usta.de (OpenSMTPD) with ESMTPA id a506ba0b;
        Sun, 12 Sep 2021 16:47:18 +0200 (CEST)
Date:   Sun, 12 Sep 2021 16:47:18 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: .B, .I disable hyphenation?
Message-ID: <20210912144718.GC41870@athene.usta.de>
References: <ebbf8dab-6fd0-2fb8-d29b-b7146f79398d@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ebbf8dab-6fd0-2fb8-d29b-b7146f79398d@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar (man-pages) wrote on Sun, Sep 12, 2021 at 02:56:39PM +0200:

> Usually, when a manual page highlights a term, either in bold or 
> italics, it usually is a special identifier (macro, function, command 
> name or argument), for which hyphenation can hurt readability and even 
> worse, turn it into a different valid identifier.
> 
> What about disabling hyphenation for .B and .I?

I would welcome such a change.

Needless to say, that is insufficient for getting it implemented.
A change of that kind requires consensus, or at least an overwhelming
majority, among groff developers.

> Are there any inconveniences in doing so that I can't see?

I don't expect any downside at all.

For comparison, the mandoc implementation of man(1) globally disables
any kind of automatic hyphenation, even in running text not containing
any markup, even if documents explicitely request hyphenation, and
provides no way to override that global choice, neither via
compile-time nor via run-time configuration, options, or any other
means.  I don't recall user complaints about the lack of hyphenation.

In technical documentation, i think the occasional confusion that
automatic hyphenation may cause, and the occasional ugliness of
output caused by automatic hyphenation, both outweigh the potential
benefits that automatic hyphenation has in texts that are not
technical documentation (yes, i did write an implementation of
automatic hyphenation around 1984 or 1985 because i do see benefits
of automatic hyphenation for some texts outside the domain of
technical documentation).

The mandoc implementation of man(1) even goes some steps further.
It globally disables line-breaking even at *existing* hyphens
whenever the hyphen appears on (almost) *any* macro or request line,
and also if the character on either side of the hyphen is not an
ASCII letter.  Again, i do not recall complaints by users that they
desire more line-breaking at existing hyphens.

Yours,
  Ingo
