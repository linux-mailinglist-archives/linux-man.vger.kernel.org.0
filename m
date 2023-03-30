Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36A0F6D101B
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 22:40:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbjC3Uki (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 16:40:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbjC3Ukh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 16:40:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35130DBEC
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 13:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680208793;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=6GjrtZIoJ54idTDTh3WAjxxLfFeW5EbvkTOo6CAfR7Y=;
        b=LQdFJJc8fCT/cyUMJLZLtRd5eMkviF5cAEtzvE32KVb5UIKjo2zwIZvKT5wDlvLPECS6Y0
        U0dp4pMQEfZ3sJepghqpcohxNbqyByc/lmweVHNyEE1K/vCNNj4DHdtyMSqbruElJrpr83
        8XJ+bdv2xWOFB8aK3e9BkmoKXkufNvo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-520-VunwpSAjO-yEi2C3Y5F1MA-1; Thu, 30 Mar 2023 16:39:50 -0400
X-MC-Unique: VunwpSAjO-yEi2C3Y5F1MA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB93F185A78F;
        Thu, 30 Mar 2023 20:39:49 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.50])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D7C0A492C3E;
        Thu, 30 Mar 2023 20:39:48 +0000 (UTC)
Date:   Thu, 30 Mar 2023 15:39:47 -0500
From:   eblake <eblake@redhat.com>
To:     roucaries bastien <roucaries.bastien+debian@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Bastien =?utf-8?Q?Roucari=C3=A8s?= <rouca@debian.org>
Subject: Re: [1003.1(2016/18)/Issue7+TC2 0001641]: sockaddr_storage is not
 alias safe
Message-ID: <vb7xcxzhjwga42jc7gndobp5zuumwvdjcq4menet2jl7qyddrs@5vzi2xg5ywve>
References: <ac7432905ef55accc85429aa9151ae03@austingroupbugs.net>
 <2ebdbde1-59d0-fc1f-672e-e53ea7a46dc2@gmail.com>
 <wcngtdfihl45ktk4tddapa3axvh5h236qteibxdnnq2dremvgy@k4hcmtvrrc2j>
 <CAE2SPAbSqpwvjkgS+h0=6X0B29S8BT-fKy7EoV0hn6HszsaHWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAE2SPAbSqpwvjkgS+h0=6X0B29S8BT-fKy7EoV0hn6HszsaHWw@mail.gmail.com>
User-Agent: NeoMutt/20230322
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 30, 2023 at 07:53:17PM +0000, roucaries bastien wrote:
> >
> > The intent from the meeting (and perhaps requires a bit of reading
> > between the lines compared to what was captured as the approved text)
> > was that implementations MUST ensure that existing code does not get
> > miscompiled under the guise of undefined behavior, but without stating
> > how to do it other than suggesting that implementation-specific
> > extensions may be needed (somewhat similar as how POSIX requires that
> > when dlsym() returns a void* for a function entry point, converting
> > that pointer to a function pointer that can then be called MUST be
> > compiled to work as intended, even though C doesn't define it).  We
> > want the burden to be on the libc and system header providers to
> > guarantee defined behavior, and not on the average coder to make
> > careful use of memcpy() between storage of different effective types
> > to avoid what might be otherwise undefined if it were written using
> > types declared using only C99 syntax.
> 
> Perfectly agreed.
> >
> > Whether gcc already has all the attributes you need is not my area of
> > expertise.  In my skim of the glibc list conversation, I saw mention
> > of attribute [[gnu:transparent_union]] rather than [[__may_alias__]] -
> > if that's a better implementation-defined extension that does what we
> > need, then use it.  The standard developers were a bit uncomfortable
> > directly putting [[gnu:transparent_union]] in the standard, but
> > [[__may_alias__]] was noncontroversial (it's in the namespace reserved
> > for the implementation) and deemed to be a sufficient hint for
> > developers to figure out that they can use whatever works best to meet
> > the actual requirement of not letting the compiler optimize away
> > socket operations under the premise of undefined behavior.
> 
> Could you add something like this to
> https://sourceware.org/bugzilla/show_bug.cgi?id=30293 or may I cite
> you ?

Feel free to cite me (I think it will look a bit better coming from
you than from me, to show that we ARE trying to involve the community,
and not just me ramming things through).  But if you don't have an
account for adding a comment, let me know and I can step in.

> 
> > > >
> > > > On page 390 line 13260 section <sys/socket.h> APPLICATION USAGE, append a sentence:
> > > >
> > > >     Note that this example only deals with size and alignment; see RATIONALE for additional issues related to these structures.
> > > >
> > > >
> > > >
> > > > On page 390 line 13291 section <sys/socket.h>, change RATIONALE from "None" to:
> > > >
> > > >     Note that defining the sockaddr_storage and sockaddr structures using only mechanisms defined in editions of the ISO C standard prior to the 2011 edition (C11) may produce aliasing diagnostics when used in C11 and later editions of the ISO C standard. Because of the large body of existing code utilizing sockets in a way that was well-defined in the 1999 edition of the ISO C standard (C99) but could trigger undefined behavior if C11/C17 aliasing detection were enforced, this standard mandates that casts between pointers to the various socket address structures do not produce aliasing diagnostics, so as to preserve well-defined semantics. An implementation's header files may need to use anonymous unions, or even an implementation-specific extension such as a <tt>[[__may_alias__]]</tt> attribute, to comply with the requirements of this standard.
> > >
> > >
> > > I'm not sure how aliasing rules changed from C99 to C11.  Wasn't
> > > aliasing already in C99 (and also in C89)?  I believe this was
> > > covered by 6.5.7, which is the same in both C99 and C11.
> > >
> > > <https://port70.net/~nsz/c/c11/n1570.html#6.5p7>
> > > <https://port70.net/~nsz/c/c99/n1256.html#6.5p7>
> >
> > I'm also not sure about where the requirements started making things
> > undefined behavior.  I do recall Nick Stoughton mentioning that he
> > seems to remember 'restrict' behavior changing between C99 and C11, so
> > maybe that's why he assumed that C99 permits the behavior without
> > undefined behvaior; but reading
> > https://port70.net/~nsz/c/c11/n1570.html#Foreword I don't see anything
> > along those lines in C11 that wasn't in C99.  It does mention that
> > anonymous unions are new to C11; the Austin Group was unsure whether
> > anonymous unions are sufficent to solve the problem on their own
> > (without also causing namespace pollution issues), or if an
> > implementation-defined extension is needed.  And maybe compilers got
> > better at alias detection because of the introduction of anonymous
> > unions.
> >
> > At any rate, since you did demonstrate that the C11 and C99 wording is
> > essentially the same, I'm happy to forward any alternative wording
> > corrections you propose, and I can bring the topic back up in next
> > week's meeting (if we decide that C99 indeed has undefined behavior,
> > rather than our assumption that it wasn't undefined until C11, we may
> > need to issue an interpretation against Issue 7, rather than just
> > tweaking the wording for Issue 8 when we swap over to C17 as the
> > mandated baseline).
> >
> > And since both C99 and C11 state that accessing the stored value of an
> > object is permissible through
> >
> > "a type compatible with the effective type of the object,"
> >
> > it seems like the obvious action in glibc is to do whatever it takes
> > to convince the compiler that struct sockaddr, struct
> > sockaddr_storage, and all of the individual sockaddr_XX protocol types
> > are marked with whatever magic that lets the compiler know that they
> > are compatible types (not necessarily according to the C rules of
> > compatible types, but according to the rules of the extension
> > attribute).  I don't know if glibc can do it in isolation, or if gcc
> > will need to invent yet another compiler attribute for glibc's use.
> 
> Do not forget clang...

True - we have a de facto dual-compiler world to think about in glibc
now...

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

