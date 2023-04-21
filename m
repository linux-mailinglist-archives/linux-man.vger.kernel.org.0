Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD096EB2F2
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 22:36:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231297AbjDUUgD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 16:36:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbjDUUgC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 16:36:02 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D5C31FD8
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 13:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1682109313;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HrmgnRb1kl68uG67Dd+OoddjmCG4H35KVeU6OD3qzXc=;
        b=cznfzJSkCsQqQjOSLZjvWvb5p9v3az2adUkzGXM+/ZyL6dSOIbTr1ejw5JGV2QxGbI4bjO
        eukEVB/3yIsojNmi7JmX+0nxzOav+eQ25mlHjI9H6YYYpS/wqUhGn10LylDp/f3KiF5XGh
        5bk/t+p1CaK6DY/xDpQES4igXIil+To=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-248-rAT0HKbzO9SeEBXAlfAfmA-1; Fri, 21 Apr 2023 16:35:10 -0400
X-MC-Unique: rAT0HKbzO9SeEBXAlfAfmA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C799811E7D;
        Fri, 21 Apr 2023 20:35:09 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.177])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 99ECA40C6EC4;
        Fri, 21 Apr 2023 20:35:07 +0000 (UTC)
Date:   Fri, 21 Apr 2023 15:35:05 -0500
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
Subject: Re: [PATCH v3] sockaddr.3type: POSIX Issue 8 will solve
 strict-aliasing issues with these types
Message-ID: <wtqulp3dbbnru6656ne77uv3o7uc7o4zu74ldh7ddsyb35eqt2@oqar2pfrng7d>
References: <sjomqddm5sik7zufnpozmagkbgnjiu55vbozruh4nsehg7hqqi@hl3jl5yde5pl>
 <20230421202718.21831-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230421202718.21831-1-alx@kernel.org>
User-Agent: NeoMutt/20230407
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Apr 21, 2023 at 10:27:18PM +0200, Alejandro Colomar wrote:
> Link: <https://austingroupbugs.net/view.php?id=1641>
> Reported-by: Bastien Roucariès <rouca@debian.org>
> Reported-by: Alejandro Colomar <alx@kernel.org>
> Reviewed-by: Eric Blake <eblake@redhat.com>
> Cc: glibc <libc-alpha@sourceware.org>
> Cc: GCC <gcc@gcc.gnu.org>
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
> Hi Eric,
> 
> I took your informal review as a "Reviewed-by".  Please confirm.
> I've also modified the small wording thingy you suggested.

For the avoidance of doubt ;)

Reviewed-by: Eric Blake <eblake@redhat.com>


-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

