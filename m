Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 046576D9D7E
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 18:25:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbjDFQZB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 12:25:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239470AbjDFQY5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 12:24:57 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2DB6AD0D
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 09:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680798249;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=qQdY9Ol7C3y+jL9vTK0658UFli16RaD7mNj64O03nOA=;
        b=Nb4iN2+ILsD47ZL4glW38Ua0+ISWuAEuAPhOmgW2rHKzLZZid27CHIrtN8jhjLoNQ6rkRp
        HrqaXqBErAYS72hUOeKyeWURRzBt811UUZ5Uu80ih9MqUxkv9kI0QyJmO7CojiA2+x/G2+
        2H0ZExG4FAJE8O26/iGQ1nJo8BVtrrc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-66-mjQGf9JBNFOxbGRpjWXoug-1; Thu, 06 Apr 2023 12:24:06 -0400
X-MC-Unique: mjQGf9JBNFOxbGRpjWXoug-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2C0B8996E1;
        Thu,  6 Apr 2023 16:24:05 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.67])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FF322027062;
        Thu,  6 Apr 2023 16:24:04 +0000 (UTC)
Date:   Thu, 6 Apr 2023 11:24:02 -0500
From:   Eric Blake <eblake@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Bastien =?utf-8?Q?Roucari=C3=A8s?= <rouca@debian.org>,
        glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH] sockaddr.3type: Document that sockaddr_storage is the
 API to be used
Message-ID: <qeo4eortjhpardcwgpjf6ryp56ivpzauzceszufkgdc2yrdrp7@ucmx7voexotw>
References: <20230330171310.12330-1-alx@kernel.org>
 <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>
 <9b528ba9-e1c6-1c03-8ec7-177c4dc66e19@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b528ba9-e1c6-1c03-8ec7-177c4dc66e19@gmail.com>
User-Agent: NeoMutt/20230322
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Apr 05, 2023 at 02:42:04AM +0200, Alejandro Colomar wrote:
> Hi Eric,
> 
> I'm going to reply both your emails here so that GCC is CCed, and they can
> suggest better stuff.  I'm worried about sending something to POSIX without
> enough eyes checking it.  So this will be a long email.

Because your mail landed in a publicly archived mailing list, the
POSIX folks saw it anyways ;)

...
> > 
> > Whether gcc already has all the attributes you need is not my area of
> > expertise.  In my skim of the glibc list conversation, I saw mention
> > of attribute [[gnu:transparent_union]] rather than [[__may_alias__]] -
> > if that's a better implementation-defined extension that does what we
> > need, then use it.  The standard developers were a bit uncomfortable
> > directly putting [[gnu:transparent_union]] in the standard, but
> > [[__may_alias__]] was noncontroversial (it's in the namespace reserved
> > for the implementation)
> 
> Not really; implementation-defined attributes are required to use an
> implementation-defined prefix like 'gnu::'.  So [[__may_alias__]] is
> reserved by ISO C, AFAIR.  Maybe it would be better to just mention
> attributes without any specific attribute name; being fuzzy about it
> would help avoid making promises that we can't hold.

On this point, the group agreed, and we intentionally loosened to
wording to just mention an implementation-defined extension, rather
than giving any specific attribute name.

...
> 
> I would just make it more fuzzy about which standard version did what.
> How about this?:
> 
> [[
> Note that defining the sockaddr_storage and sockaddr structures using
> only mechanisms defined in editions of the ISO C standard may produce
> aliasing diagnostics.  Because of the large body of existing code
> utilizing sockets in a way that could trigger undefined behavior due
> to strict aliasing rules, this standard mandates that the various socket
> address structures can alias each other for accessing their first member,

The sa_family_t member is not necessarily the first member on all
platforms (it happens to be first in Linux, but as a counter-example,
https://man.freebsd.org/cgi/man.cgi?query=unix&sektion=4 shows
sun_family as the second one-byte field in struct sockaddr_un).  The
emphasis is on derefencing the family member (whatever offset it is
at) to learn what cast to use to then safely access the rest of the
storage.

As such, here's the updated wording that the Austin Group tried today
(and we plan on starting a 30-day interpretation feedback window if
there are still adjustments to be made to the POSIX wording):

https://austingroupbugs.net/view.php?id=1641#c6255

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

