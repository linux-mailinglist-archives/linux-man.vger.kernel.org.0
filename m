Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C87B6D0DD9
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 20:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbjC3Shc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 14:37:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbjC3Shb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 14:37:31 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 846891FCA
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 11:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680201404;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=pK1t6QzoxV8tJoLNVb+rcSHbzTX5VaGeMy/BWdKa7iU=;
        b=EbjFIIFrpA7eHudp1GYlj4ZGjCGs4hai5N/bzVXApABwC8OyQzArDP/64PVKt72l3zfXN7
        gmngztcf/w1xC3iVpn3AWRnzAhca1L/4+zJJVoNOJP6e/ZV2FdJI6cW/twesy26MxUkKbt
        w3bthRgV1srWHxykUApgAQq7MHEEG90=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-306-6F_Lt_eOPsqlx9hfIcRLhA-1; Thu, 30 Mar 2023 14:36:40 -0400
X-MC-Unique: 6F_Lt_eOPsqlx9hfIcRLhA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9642E1C00403;
        Thu, 30 Mar 2023 18:36:39 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.50])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 310762166B4D;
        Thu, 30 Mar 2023 18:36:39 +0000 (UTC)
Date:   Thu, 30 Mar 2023 13:36:36 -0500
From:   eblake <eblake@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Bastien =?utf-8?Q?Roucari=C3=A8s?= <rouca@debian.org>
Subject: Re: [1003.1(2016/18)/Issue7+TC2 0001641]: sockaddr_storage is not
 alias safe
Message-ID: <wcngtdfihl45ktk4tddapa3axvh5h236qteibxdnnq2dremvgy@k4hcmtvrrc2j>
References: <ac7432905ef55accc85429aa9151ae03@austingroupbugs.net>
 <2ebdbde1-59d0-fc1f-672e-e53ea7a46dc2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2ebdbde1-59d0-fc1f-672e-e53ea7a46dc2@gmail.com>
User-Agent: NeoMutt/20230322
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 30, 2023 at 06:25:30PM +0200, Alejandro Colomar wrote:
> Hi Eric!
> 
> On 3/30/23 17:22, Austin Group Bug Tracker via austin-group-l at The Open Group wrote:
> > 
> > The following issue has been RESOLVED. 
> > ====================================================================== 
> > https://austingroupbugs.net/view.php?id=1641
...
> 
> Thanks for taking care of this bug!

My pleasure.

> 
> 
> On 3/30/23 17:20, Austin Group Bug Tracker via austin-group-l at The Open Group wrote:
> > On page 386 line 13115 section <sys/socket.h> DESCRIPTION, change:
> > 
> >     When a pointer to a sockaddr_storage structure is cast as a pointer to a sockaddr structure, the ss_family field of the sockaddr_storage structure shall map onto the sa_family field of the sockaddr structure. When a pointer to a sockaddr_storage structure is cast as a pointer to a protocol-specific address structure, the ss_family field shall map onto a field of that structure that is of type sa_family_t and that identifies the protocol’s address family.
> > 
> > to:
> > 
> >     When a pointer to a sockaddr_storage structure is cast as a pointer to a sockaddr structure, or vice versa, the ss_family field of the sockaddr_storage structure shall map onto the sa_family field of the sockaddr structure. When a pointer to a sockaddr_storage structure is cast as a pointer to a protocol-specific address structure, or vice versa, the ss_family field shall map onto a field of that structure that is of type sa_family_t and that identifies the protocol’s address family. When a pointer to a sockaddr structure is cast as a pointer to a protocol-specific address structure, or vice versa, the sa_family field shall map onto a field of that structure that is of type sa_family_t and that identifies the protocol’s address family. Additionally, the structures shall be defined in such a way that these casts do not cause the compiler to produce diagnostics about aliasing issues when compiling conforming application (xref to XBD section 2.2) source files.
> 
> I will add a CAVEATS section in sockaddr(3type) covering this, and will
> CC you just to check.

Sure, I'll be happy to review.

The intent from the meeting (and perhaps requires a bit of reading
between the lines compared to what was captured as the approved text)
was that implementations MUST ensure that existing code does not get
miscompiled under the guise of undefined behavior, but without stating
how to do it other than suggesting that implementation-specific
extensions may be needed (somewhat similar as how POSIX requires that
when dlsym() returns a void* for a function entry point, converting
that pointer to a function pointer that can then be called MUST be
compiled to work as intended, even though C doesn't define it).  We
want the burden to be on the libc and system header providers to
guarantee defined behavior, and not on the average coder to make
careful use of memcpy() between storage of different effective types
to avoid what might be otherwise undefined if it were written using
types declared using only C99 syntax.

Whether gcc already has all the attributes you need is not my area of
expertise.  In my skim of the glibc list conversation, I saw mention
of attribute [[gnu:transparent_union]] rather than [[__may_alias__]] -
if that's a better implementation-defined extension that does what we
need, then use it.  The standard developers were a bit uncomfortable
directly putting [[gnu:transparent_union]] in the standard, but
[[__may_alias__]] was noncontroversial (it's in the namespace reserved
for the implementation) and deemed to be a sufficient hint for
developers to figure out that they can use whatever works best to meet
the actual requirement of not letting the compiler optimize away
socket operations under the premise of undefined behavior.

> > 
> > On page 390 line 13260 section <sys/socket.h> APPLICATION USAGE, append a sentence:
> > 
> >     Note that this example only deals with size and alignment; see RATIONALE for additional issues related to these structures.
> > 
> > 
> > 
> > On page 390 line 13291 section <sys/socket.h>, change RATIONALE from "None" to:
> > 
> >     Note that defining the sockaddr_storage and sockaddr structures using only mechanisms defined in editions of the ISO C standard prior to the 2011 edition (C11) may produce aliasing diagnostics when used in C11 and later editions of the ISO C standard. Because of the large body of existing code utilizing sockets in a way that was well-defined in the 1999 edition of the ISO C standard (C99) but could trigger undefined behavior if C11/C17 aliasing detection were enforced, this standard mandates that casts between pointers to the various socket address structures do not produce aliasing diagnostics, so as to preserve well-defined semantics. An implementation's header files may need to use anonymous unions, or even an implementation-specific extension such as a <tt>[[__may_alias__]]</tt> attribute, to comply with the requirements of this standard.
> 
> 
> I'm not sure how aliasing rules changed from C99 to C11.  Wasn't
> aliasing already in C99 (and also in C89)?  I believe this was
> covered by 6.5.7, which is the same in both C99 and C11.
> 
> <https://port70.net/~nsz/c/c11/n1570.html#6.5p7>
> <https://port70.net/~nsz/c/c99/n1256.html#6.5p7>

I'm also not sure about where the requirements started making things
undefined behavior.  I do recall Nick Stoughton mentioning that he
seems to remember 'restrict' behavior changing between C99 and C11, so
maybe that's why he assumed that C99 permits the behavior without
undefined behvaior; but reading
https://port70.net/~nsz/c/c11/n1570.html#Foreword I don't see anything
along those lines in C11 that wasn't in C99.  It does mention that
anonymous unions are new to C11; the Austin Group was unsure whether
anonymous unions are sufficent to solve the problem on their own
(without also causing namespace pollution issues), or if an
implementation-defined extension is needed.  And maybe compilers got
better at alias detection because of the introduction of anonymous
unions.

At any rate, since you did demonstrate that the C11 and C99 wording is
essentially the same, I'm happy to forward any alternative wording
corrections you propose, and I can bring the topic back up in next
week's meeting (if we decide that C99 indeed has undefined behavior,
rather than our assumption that it wasn't undefined until C11, we may
need to issue an interpretation against Issue 7, rather than just
tweaking the wording for Issue 8 when we swap over to C17 as the
mandated baseline).

And since both C99 and C11 state that accessing the stored value of an
object is permissible through

"a type compatible with the effective type of the object,"

it seems like the obvious action in glibc is to do whatever it takes
to convince the compiler that struct sockaddr, struct
sockaddr_storage, and all of the individual sockaddr_XX protocol types
are marked with whatever magic that lets the compiler know that they
are compatible types (not necessarily according to the C rules of
compatible types, but according to the rules of the extension
attribute).  I don't know if glibc can do it in isolation, or if gcc
will need to invent yet another compiler attribute for glibc's use.

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

