Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F19C6781BD
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 17:39:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233344AbjAWQjE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 11:39:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233253AbjAWQit (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 11:38:49 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22EDC11162
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 08:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1674491879;
        h=from:from:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:in-reply-to:in-reply-to:  references:references;
        bh=Ar+a6GLabPZ7/PyKbBYg16sc25KzilVnMTiKFwA5Frg=;
        b=FRWdZo3ApA5Ux38pz7HXFrPZUKOaaS91BKXxnTJV42YsCaEjwblDctNxYHKnpdFciOa53f
        Y4zrQDLra3c7KmRGRTJfGftGCTK2d4uCLSPth2FiTkXe9ZIvyatGyBUP7Gq6aQDb3Jxzdu
        nW+6kY4G2NK0IhMWmAc+ZXxPLQ5Wsg8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-q6itHCLYOX-rEZi4Nk1xDw-1; Mon, 23 Jan 2023 11:37:54 -0500
X-MC-Unique: q6itHCLYOX-rEZi4Nk1xDw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFDB685C064;
        Mon, 23 Jan 2023 16:37:53 +0000 (UTC)
Received: from tucnak.zalov.cz (unknown [10.39.192.223])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D1C7C15BAD;
        Mon, 23 Jan 2023 16:37:53 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
        by tucnak.zalov.cz (8.17.1/8.17.1) with ESMTPS id 30NGboBT445152
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Mon, 23 Jan 2023 17:37:50 +0100
Received: (from jakub@localhost)
        by tucnak.zalov.cz (8.17.1/8.17.1/Submit) id 30NGbmBC445151;
        Mon, 23 Jan 2023 17:37:48 +0100
Date:   Mon, 23 Jan 2023 17:37:48 +0100
From:   Jakub Jelinek <jakub@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>,
        Bastien =?iso-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
Subject: Re: struct sockaddr_storage
Message-ID: <Y8633MfNxeI9StbW@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jan 23, 2023 at 05:03:00PM +0100, Alejandro Colomar via Gcc wrote:
> Hi Stefan,
> 
> On 1/23/23 08:40, Stefan Puiu wrote:
> > > > > According to strict aliasing rules, if you declare a variable of type 'struct
> > > > > sockaddr_storage', that's what you get, and trying to access it later as some
> > > > > other sockaddr_8 is simply not legal.  The compiler may assume those accesses
> > > > > can't happen, and optimize as it pleases.
> > > > 
> > > > Can you detail the "is not legal" part?
> > > 
> > > I mean that it's Undefined Behavior contraband.
> > 
> > OK, next question. Is this theoretical or practical UB?
> 
> 
> Since the functions using this type are not functions that should be
> inlined, since the code is rather large, they are not visible to the
> compiler, so many of the optimizations that this UB enables are not likely
> to happen.  Translation Unit (TU) boundaries are what keeps most UB
> invokations not be really dangerous.
> 
> Also, glibc seems to be using a GCC attribute (transparent_union) to make
> the code avoid UB even if it were inlined, so if you use glibc, you're fine.
> If you're using some smaller libc with a less capable compiler, or maybe
> C++, you are less lucky, but TU boundaries will probably still save your
> day.

Please see transparent_union documentation in GCC documentation.
E.g. https://gcc.gnu.org/onlinedocs/gcc-12.2.0/gcc/Common-Type-Attributes.html#index-transparent_005funion-type-attribute
transparent_union doesn't change anything regarding type punning, it is
solely about function arguments, how arguments of that type are passed
(as first union member) and that no casts to the union are needed from
the member types.
And, with LTO TU boundaries are lost, inlining or other IPA optimizations
(including say modref) work in between TUs.

	Jakub

