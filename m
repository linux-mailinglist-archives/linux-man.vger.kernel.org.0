Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F2DF538D7F
	for <lists+linux-man@lfdr.de>; Tue, 31 May 2022 11:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244725AbiEaJKn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 May 2022 05:10:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235570AbiEaJKm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 May 2022 05:10:42 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4CAA3443E4
        for <linux-man@vger.kernel.org>; Tue, 31 May 2022 02:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653988240;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=1ZibfqV0SHqt9zOtBUi9/nOHJpvySTedQcF1FikLBZQ=;
        b=CfrSh3r1tsfjYMYEgS7UFwJ2iqe9mE8ZagVXjhv/IHxdr8XVCGJYIGG+6P4U/ov0Ps63Rb
        03hhmSgm5708gOXHGYjJpMrUYJRML/90TQrgrQBV40CyVix/4ecgSUhxL2vmmpkW9vf4b7
        yvHh01am8UtE7zqFW5Bc2giFsbo0blM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-386-ZWt9AtEsMpqF2TmzKcaQTA-1; Tue, 31 May 2022 05:10:37 -0400
X-MC-Unique: ZWt9AtEsMpqF2TmzKcaQTA-1
Received: by mail-wm1-f70.google.com with SMTP id l34-20020a05600c1d2200b003973a50c1e4so973974wms.2
        for <linux-man@vger.kernel.org>; Tue, 31 May 2022 02:10:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=1ZibfqV0SHqt9zOtBUi9/nOHJpvySTedQcF1FikLBZQ=;
        b=LCXgCI2AnRX8vBmvGNm+dPV6DB5rsHd/tQz2ymuNarxAevWlI1W0quegNcQfCUXLsY
         AIxstT9jV1hD0fk3eNCq3/sBa6/rXAotuuIstISo9frCfIMfxhylDxaRyC/ANovjGHxG
         rnepLxN65Zd7FMkAk0+zR974FsiXiVbjwNmstNJ/TVQ4ofAonD9TccQ5KKvWhM82YcPj
         j10HBPj+pW7qDPxs4+0EPMeMRD9npi/jC8Vs22Fh8gtG1fkapvJaYwmZ3ylLcLtDJawt
         aKvNb/o0biLBEeoUuPKdIHutiN7MlEzXv58Jyc5n4K5P/J2E5Pc6qKtAZOhc5mW8rufk
         s7KQ==
X-Gm-Message-State: AOAM532RCVDt4EovAyktY0pGujE2D/PQ6vPqri1kHarB0y+4jfPZ53WC
        qcLMd/JCix8Y1oaURlgvltdiUfaJiWp3bfe2n+XsGhf/Cn8bDTRxe9gzRJPX5FsD/sN+zJHfmp1
        c4EOkppIkoovZ0nPcpJev
X-Received: by 2002:a5d:588d:0:b0:20f:f290:ed83 with SMTP id n13-20020a5d588d000000b0020ff290ed83mr28486328wrf.588.1653988235961;
        Tue, 31 May 2022 02:10:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxgbt2GNsXlg1E02ofyTgLoaQFVKqcMmZdSzjfUKv6pmKYtIzq4PYyeBV/UjNCajlkAxqqGsw==
X-Received: by 2002:a5d:588d:0:b0:20f:f290:ed83 with SMTP id n13-20020a5d588d000000b0020ff290ed83mr28486310wrf.588.1653988235617;
        Tue, 31 May 2022 02:10:35 -0700 (PDT)
Received: from ?IPV6:2003:cb:c708:f100:8096:9368:ba52:a341? (p200300cbc708f10080969368ba52a341.dip0.t-ipconnect.de. [2003:cb:c708:f100:8096:9368:ba52:a341])
        by smtp.gmail.com with ESMTPSA id s15-20020adff80f000000b0020ff7246934sm7027259wrp.95.2022.05.31.02.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 02:10:35 -0700 (PDT)
Message-ID: <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
Date:   Tue, 31 May 2022 11:10:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
From:   David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <20220526180950.13916-1-mike.kravetz@oracle.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 26.05.22 20:09, Mike Kravetz wrote:
> Clarify that madvise only works on full pages, and remove references
> to 'bytes'.
> 
> Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
> HugeTLB mappings are not supported.  Indicate the releases when they
> were first supported as well as alignment restrictions.
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---

BTW, the git repository [1] was last updated 2021-09-02. One of my
patches [2] was apparently picked up (reply via mail) but doesn't appear
in that repository.

Is the project currently dead/unmaintained or am I just staring at the
wrong repository?

[1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
[2] https://lkml.kernel.org/r/20210823120645.8223-1-david@redhat.com

> v1 -> v2 Added releases when Huge TLB support was added and moved
> 	alignment requirements to corresponding section.  (Peter)
> 
>  man2/madvise.2 | 31 +++++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 10 deletions(-)
> 
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index f1f384c0c..50686e7e3 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -61,9 +61,13 @@ system call is used to give advice or directions to the kernel
>  about the address range beginning at address
>  .I addr
>  and with size
> +.IR length .
> +.BR madvise ()
> +only operates on whole pages, therefore
> +.I addr
> +must be page-aligned.  The value of
>  .I length
> -bytes
> -In most cases,
> +is rounded up to a multiple of page size.  In most cases,
>  the goal of such advice is to improve system or application performance.
>  .PP
>  Initially, the system call supported a set of "conventional"
> @@ -143,7 +147,7 @@ The resident set size (RSS) of the calling process will be immediately
>  reduced however.
>  .IP
>  .B MADV_DONTNEED
> -cannot be applied to locked pages, Huge TLB pages, or
> +cannot be applied to locked pages, or
>  .BR VM_PFNMAP
>  pages.
>  (Pages marked with the kernel-internal
> @@ -153,6 +157,11 @@ flag are special memory areas that are not managed
>  by the virtual memory subsystem.
>  Such pages are typically created by device drivers that
>  map the pages into user space.)
> +.IP
> +Support for Huge TLB pages was added in Linux v5.18.  Addresses within a
> +mapping backed by Huge TLB pages must be aligned to the underlying Huge TLB
> +page size, and the range length is rounded up to a multiple of the underlying
> +Huge TLB page size.
>  .\"
>  .\" ======================================================================
>  .\"
> @@ -170,24 +179,24 @@ Note that some of these operations change the semantics of memory accesses.
>  .\" commit f6b3ec238d12c8cc6cc71490c6e3127988460349
>  Free up a given range of pages
>  and its associated backing store.
> -This is equivalent to punching a hole in the corresponding byte
> +This is equivalent to punching a hole in the corresponding
>  range of the backing store (see
>  .BR fallocate (2)).
>  Subsequent accesses in the specified address range will see
> -bytes containing zero.
> +pages containing zero.
>  .\" Databases want to use this feature to drop a section of their
>  .\" bufferpool (shared memory segments) - without writing back to
>  .\" disk/swap space.  This feature is also useful for supporting
>  .\" hot-plug memory on UML.
>  .IP
>  The specified address range must be mapped shared and writable.
> -This flag cannot be applied to locked pages, Huge TLB pages, or
> +This flag cannot be applied to locked pages, or
>  .BR VM_PFNMAP
>  pages.
>  .IP
>  In the initial implementation, only
>  .BR tmpfs (5)
> -was supported
> +supported
>  .BR MADV_REMOVE ;
>  but since Linux 3.5,
>  .\" commit 3f31d07571eeea18a7d34db9af21d2285b807a17
> @@ -196,10 +205,12 @@ any filesystem which supports the
>  .BR FALLOC_FL_PUNCH_HOLE
>  mode also supports
>  .BR MADV_REMOVE .
> -Hugetlbfs fails with the error
> -.BR EINVAL
> -and other filesystems fail with the error
> +Filesystems which do not support
> +.BR MADV_REMOVE
> +fail with the error
>  .BR EOPNOTSUPP .
> +.IP
> +Support for Huge TLB filesystem was added in Linux v4.3.
>  .TP
>  .BR MADV_DONTFORK " (since Linux 2.6.16)"
>  .\" commit f822566165dd46ff5de9bf895cfa6c51f53bb0c4


-- 
Thanks,

David / dhildenb

