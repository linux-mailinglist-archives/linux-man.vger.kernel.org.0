Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC6666D0E63
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 21:12:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229967AbjC3TMO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 15:12:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjC3TMO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 15:12:14 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A682AF742
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 12:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680203479;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=M7bnFoaEaHXxU/Erap+/ivfOplD6BFSq98xp5K6Cc8Q=;
        b=FlSpnZkJQPnWHgSBxofk97znQS8oRZHNoUgailkDoOroghWAOlpdIwxaqQCcOgZXyQO9Gl
        uxclPxY5gMRlr34RAm/wM6FyemLAhV1Cj4KSJfGL/QHsCjUBLfbUV8z1/dQVz1aQ/1Mefy
        QPtlaQT4ty+os4TH+IVecbTkjwFuQM4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-63-CIdP-iX8OIukHCKRYS43QA-1; Thu, 30 Mar 2023 15:11:16 -0400
X-MC-Unique: CIdP-iX8OIukHCKRYS43QA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3C6C87B2B5;
        Thu, 30 Mar 2023 19:11:15 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.50])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 286E51121330;
        Thu, 30 Mar 2023 19:11:14 +0000 (UTC)
Date:   Thu, 30 Mar 2023 14:11:12 -0500
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
Message-ID: <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>
References: <20230330171310.12330-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230330171310.12330-1-alx@kernel.org>
User-Agent: NeoMutt/20230322
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Mar 30, 2023 at 07:13:11PM +0200, Alejandro Colomar wrote:
> POSIX.1 Issue 8 will fix the long-standing issue with sockaddr APIs,
> which inevitably caused UB either on user code, libc, or more likely,
> both.  sockaddr_storage has been clarified to be implemented in a manner
> that aliasing it is safe (suggesting a unnamed union, or other compiler
> magic).
> 
> Link: <https://www.austingroupbugs.net/view.php?id=1641>
> Reported-by: Bastien Roucariès <rouca@debian.org>
> Reported-by: Alejandro Colomar <alx@kernel.org>
> Cc: glibc <libc-alpha@sourceware.org>
> Cc: GCC <gcc@gcc.gnu.org>
> Cc: Eric Blake <eblake@redhat.com>
> Cc: Stefan Puiu <stefan.puiu@gmail.com>
> Cc: Igor Sysoev <igor@sysoev.ru>
> Cc: Rich Felker <dalias@libc.org>
> Cc: Andrew Clayton <andrew@digital-domain.net>
> Cc: Richard Biener <richard.guenther@gmail.com>
> Cc: Zack Weinberg <zack@owlfolio.org>
> Cc: Florian Weimer <fweimer@redhat.com>
> Cc: Joseph Myers <joseph@codesourcery.com>
> Cc: Jakub Jelinek <jakub@redhat.com>
> Cc: Sam James <sam@gentoo.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi all,
> 
> This is my proposal for documenting the POSIX decission of fixing the
> definition of sockaddr_storage.  Bastien, I believe you had something
> similar in mind; please review.  Eric, thanks again for the fix!  Could
> you please also have a look at this?
> 
> Cheers,
> 
> Alex
> 
>  man3type/sockaddr.3type | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/man3type/sockaddr.3type b/man3type/sockaddr.3type
> index 32c3c5bd0..d1db87d5d 100644
> --- a/man3type/sockaddr.3type
> +++ b/man3type/sockaddr.3type
> @@ -23,6 +23,14 @@ .SH SYNOPSIS
>  .PP
>  .B struct sockaddr_storage {
>  .BR "    sa_family_t     ss_family;" "      /* Address family */"
> +.PP
> +.RS 4
> +/* This structure is not really implemented this way.  It may be
> +\&   implemented with an unnamed union or some compiler magic to
> +\&   avoid breaking aliasing rules when accessed as any other of the
> +\&   sockaddr_* structures documented in this page.  See CAVEATS.
> +\& */

Do we want similar comments in struct sockaddr and/or sockaddr_XX?

> +.RE
>  .B };
>  .PP
>  .BR typedef " /* ... */ " socklen_t;
> @@ -122,6 +130,20 @@ .SH NOTES
>  .I <netinet/in.h>
>  and
>  .IR <sys/un.h> .
> +.SH CAVEATS
> +To avoid breaking aliasing rules,
> +programs that use functions that receive pointers to
> +.I sockaddr
> +structures should declare objects of type
> +.IR sockaddr_storage ,
> +which is defined in a way that it
> +can be accessed as any of the different structures defined in this page.
> +Failure to do so may result in Undefined Behavior.

Existing POSIX already requires sockaddr_storage to be suitably sized
and aligned to overlay with all other sockaddr* types.  What the
recent POSIX bug change does is add wording to emphasize that casts in
any of the 6 directions:

sockaddr* <-> sockaddr_XX*
sockaddr_storage* <-> sockaddr*
sockaddr_storage* <-> sockaddr_XX*

must allow the sa_family/ss_family/sa_family_t member to overlay
without triggering undefined behavior due to bad aliasing, at which
point, access to that member lets you deduce what other object type
you really have.  But you are also correct that merely casting a
pointer to another larger struct that doesn't trigger aliasing, but
then dereferencing beyond the bounds of the original, is not intended
to be portable.  The aliasing diagnostics are suppressed because of
the requirements on the first member, so now the user must now be
careful that their access of remaining members is safe even if the
compiler is no longer helping them because of the magic that
suppressed the aliasing detection.

I agree with your warning that code that can handle generic socket
types should use sockaddr_storage (and not sockaddr) as the original
object (the one object that the standard requires to be suitably sized
and aligned to overlay with the entirety of all other sockaddr types,
rather than just the sa_family_t first member), although we may want
to be more precise that code using a specific protocol type can
directly use the proper sockaddr_XX type rather than having to use an
intermediate sockaddr_storage.

I'm not sure if there are better ways to word that paragraph to convey
the intended sentiment.

> +.PP
> +New functions should be written to accept pointers to
> +.I sockaddr_storage
> +instead of the traditional
> +.IR sockaddr .

I'm less certain about this one.  The POSIX wording specifically chose
to keep existing API/ABI of sockaddr* in all the standardized
functions unchanged, as it would be too invasive to existing code to
change the signatures now.  The burden is on the system headers to
define types so that the necessary casts (present in lots of existing
code because sockaddr* has a bit more type-safety than void*) do not
of themselves cause aliasing issues, and therefore avoid undefined
behavior provided subsequent code accessing through the pointers is
not accessing beyond the bounds of the real object.  The likelihood of
POSIX adding new socket APIs taking sockaddr_storage* just to enforce
non-aliasing seems slim.  But then again, this advice applies to more
than just functions likely to be standardized in a future libc, so
maybe this paragraph is worth it after all.

>  .SH SEE ALSO
>  .BR accept (2),
>  .BR bind (2),
> -- 
> 2.39.2
> 

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

