Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA72F77FAAD
	for <lists+linux-man@lfdr.de>; Thu, 17 Aug 2023 17:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351725AbjHQPY5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 11:24:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352443AbjHQPYq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 11:24:46 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A0E3E6B
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 08:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1692285839;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=zgrCG+ywd5Y+o9g21S6f5wKn6sm5A8PQAOGPZOemHlE=;
        b=TrUUimzV9e18OhAhSCmuFHzeGAZHCAaGfZS/jIiX4CGvsK7p6N2GuKunblQCnmnx6q627F
        pnO1F3cHmu8wMZAhcgMqoBlg44SSlPTXOvOXNswXdKswuU8FQXEuQVnt3SGR2DFo62AT7u
        4sqwH6Fczq7+imrw2AnPjlM09AKS3wY=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-249-38W1UEkNOUa428318LzI0Q-1; Thu, 17 Aug 2023 11:23:57 -0400
X-MC-Unique: 38W1UEkNOUa428318LzI0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 558D13813F43;
        Thu, 17 Aug 2023 15:23:57 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.62])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D1AB42166B2D;
        Thu, 17 Aug 2023 15:23:56 +0000 (UTC)
Date:   Thu, 17 Aug 2023 10:23:55 -0500
From:   Eric Blake <eblake@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Message-ID: <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
User-Agent: NeoMutt/20230517
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Aug 14, 2023 at 12:29:23AM +0200, Alejandro Colomar wrote:
> On 2023-08-14 00:27, Alejandro Colomar wrote:
> > [+= Eric]
> > 
> > Hi Branden, Eric,
> > 
> > On 2023-08-14 00:20, G. Branden Robinson wrote:
> >> At 2023-08-13T23:30:30+0200, Alejandro Colomar wrote:
> >>> And also, I don't even have the sources, which makes things more
> >>> complex.
> >>>
> >>> I wish that POSIX allowed us to have a copy of the original source
> >>> code of the POSIX manual in the git repository.  With that, I'd find
> >>> it more interesting to maintain the project again.
> >>>
> >>> I'd also like to know what's the original source code of POSIX's
> >>> manual, because it may very well be roff(7).  If that happens to be
> >>> true, I'd like to have access to that source, instead of the HTML.

I'm not sure if the POSIX original is quite roff, but I just confirmed
that I have access to the repository where Issue 8 is being worked on
(it required me to have an Open Group login, so you may not be able to
access this page):

https://gitlab.opengroup.org/the-austin-group/sus_base/-/commits/Issue8/

I can also recommend contacting Andrew Josey (ajosey@opengroup.org -
admin) and/or Geoff Clare (gwc@opengroup.org - most active committer
in that project) of the Austin Group, to figure out if there is a way
for you to get access to that repository.

> >>
> >> My understanding from hermetic comments to the Austin Group mailing list
> >> over the years is that:
> >>
> >> 1. they have used groff for many years (a decade or more);
> >> 2. they don't use man(7) for their man pages (I was told this directly);
> >>
> >> and
> >>
> >> 3. they use (a customized version of) mm(7)--or I _think_ I saw someone
> >>    say this, but I have no citation and I am not even sure it was an
> >>    Open Group employee who claimed it.
> > 
> > I'd love to have the ms(7) source then.  That way I would have a reason
> > to learn ms(7).  :)
> 
> Oops, mm(7).

Based on my quick perusal, it is indeed .mm files that form the bulk
of the content in that repository.  For example, even if you can't
access the repository yet, I don't think there is any problem under
the fair use doctrine for sharing a snippet of a recent commit:

| commit 7fad34c5f734d7a54c6a5fa8124baf819c2b8de5
| Author: Geoff Clare <gwc@opengroup.org>
| Date:   Tue Aug 8 10:52:54 2023 +0100
| 
|     Applied bug 1741
| 
| diff --git a/Base/Text/Functions/getlocalename_l.mm b/Base/Text/Functions/getlocalename_l.mm
| index 13af2a5..339bfc5 100644
| --- a/Base/Text/Functions/getlocalename_l.mm
| +++ b/Base/Text/Functions/getlocalename_l.mm
| @@ -12,7 +12,9 @@ const char *getlocalename_l(int \f6category\fP, locale_t \f6locobj\fP);
|  .sE
|  .yE
|  .mH DESCRIPTION
| -The
| +If
| +.Ar category
| +is not LC_ALL, the
|  .Fn getlocalename_l
|  function shall return the locale name for the given locale category of
|  the locale object
| ...

> > It would certainly be better than the HTML files.  It would be
> > interesting to adapt the Linux man-pages build system to also support
> > ms(7) pages.
> > 
> >>
> >> We fixed a bunch of bugs in GNU mm for groff 1.23.0.[1]  I wonder if
> >> they will be cross with me about that.  Even if they didn't rely on any
> >> erstwhile misbehavior, the source churned, some internals changed, and
> >> if they patched the package, I wouldn't count on the patches still
> >> applying cleanly.
> >>
> >>> Would you mind forwarding my rage towards the Open group, which IMO is
> >>> not so open?
> >>
> >> Maybe scrape off the rage first, or you might get a response from Robert
> >> Elz, who is even more cantankerous and writes at even greater length
> >> than I do.  ;-)
> > 
> > I promise to scrape the rage if I get a name and an email of who to talk
> > to.  Maybe Eric can help.  :)

I'm not forwarding this email directly, but I'm happy to be a liaison
to connect you with other Austin Group members.

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.
Virtualization:  qemu.org | libguestfs.org

