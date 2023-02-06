Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1FF568C611
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 19:46:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbjBFSq2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 13:46:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjBFSq1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 13:46:27 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 689EC233F3
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 10:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675709138;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=wLTq6kW7n8piPxBWivlhBz748fbHyw8XZ0rKluo0WpQ=;
        b=Slls2srBAHER2mUUwgSMlkgaZMD66VCZZHKlRND3ufp/AlB6wEsSGeReKOsndWhlzJA5RZ
        KzAiuFmb2RK3ZoCcF6BIVIoeHKRW8Z/5O06nSF8Fn4XPozeoLdh20QmM2dF/gEFaxuJG74
        H4yJPGJrzwMm5B2Yu8lJFz01e87/Z6M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-385-yC9CZOPeM7ikHZThRRUiiA-1; Mon, 06 Feb 2023 13:45:35 -0500
X-MC-Unique: yC9CZOPeM7ikHZThRRUiiA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED455101B42B;
        Mon,  6 Feb 2023 18:45:33 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.104])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FD2A1121315;
        Mon,  6 Feb 2023 18:45:31 +0000 (UTC)
Date:   Mon, 6 Feb 2023 12:45:30 -0600
From:   Eric Blake <eblake@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
        Bastien =?utf-8?Q?Roucari=C3=A8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Message-ID: <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
References: <20230205152835.17413-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230205152835.17413-1-alx@kernel.org>
User-Agent: NeoMutt/20220429
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Feb 05, 2023 at 04:28:36PM +0100, Alejandro Colomar wrote:

Regardless of the merits of the patch, let's not introduce typos:

> +++ b/man3type/sockaddr.3type
> @@ -120,6 +120,26 @@ .SH NOTES
>  .I <netinet/in.h>
>  and
>  .IR <sys/un.h> .
> +.SH BUGS
> +.I sockaddr_storage
> +was designed back when strict aliasing wasn't a problem.
> +Back then,
> +one would define a variable of that type,
> +and then access it as any of the other
> +.IR sockaddr_ *
> +types,
> +depending on the value of the first member.
> +This is Undefined Behavior.
> +However, there is no way to use these APIs without invoking Unedfined Behavior,

Undefined

> +either in the user program or in libc,
> +so it is still recommended to use this method.
> +The only correct way to use different types in an API is through a union.
> +However,
> +that union must be implemented in the library,
> +since the type must be shared between the library and user code,
> +so libc should be fixed by implementing
> +.I sockaddr_storage
> +as a union.
>  .SH SEE ALSO
>  .BR accept (2),
>  .BR bind (2),

Also, while I could raise the issue with the Austin Group on your
behalf to get the POSIX wording improved, I think it would work better
if you initiate a bug report rather than having me do it:

https://www.austingroupbugs.net/main_page.php

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

