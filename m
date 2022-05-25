Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6613153432B
	for <lists+linux-man@lfdr.de>; Wed, 25 May 2022 20:38:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240934AbiEYSiz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 May 2022 14:38:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245596AbiEYSiy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 May 2022 14:38:54 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 086FAB2244
        for <linux-man@vger.kernel.org>; Wed, 25 May 2022 11:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653503931;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=H/tW/Qrqk4/G5pQlU4Ra/fXakbIqjHAMYdwDV+SraSk=;
        b=QvkvVjoOGhBbjZLGRljkQEKkBMeyaW6FmoJMbhE0poBqfx2KVw2q60FGAsFxs/AjH/wIg3
        lNNwxgovQVTsUFz1aWhcSW+qZu2/5fXstMhp5x86fYq8A/j79aMuQigvTPjbunJX1hqLqF
        qZtEkUer3/m9JvRY/GE0/tz2BYAUw6w=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-365-POclmYJBPAq7TO3u4TFprQ-1; Wed, 25 May 2022 14:38:49 -0400
X-MC-Unique: POclmYJBPAq7TO3u4TFprQ-1
Received: by mail-il1-f199.google.com with SMTP id x8-20020a056e021ca800b002d1332831deso13126069ill.23
        for <linux-man@vger.kernel.org>; Wed, 25 May 2022 11:38:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=H/tW/Qrqk4/G5pQlU4Ra/fXakbIqjHAMYdwDV+SraSk=;
        b=3/AYx13/BaGJl1i6ttKkOmxe2CRUiNp8UnljiR4kg54CK2Xch9lPM4Dxn36cRQGQRg
         S9BdbDieCiLUDRpQ0l+0aUQBn4ukmFKW4VKasL4/zqekPeeRRQGwkvPh3DBW7BNVfz3T
         vb94JazA3LBARVtow+VprfHDAsAOBe8rdbF5l4bXD3no9rezTxKXJf4h9+W8MV6hHyv+
         R/i8GKTQiznGz7P9tq+U7C7AsW2Awg19R0/edfsSqg3xpG6OCfXyFYy2L+1XHI6cAAtr
         +YvnWRp7UknHzYSW3TG/1FPtLYZkbFFh+qsMFMXBzjIr6j3To9cJsXNq4XvR7Sf2GY0V
         Eo6A==
X-Gm-Message-State: AOAM5300eNiL+Uqq7zFvMMMQDWl0l9P5P7XaTCLe586RuRLusASRN2uM
        eqHSkhdGwWo+quU1FdIrblmKnJqcYmHIYXTjq4XaWreQdsZuYGd+kAU5zwh8C2Hxh1NrK52MTpY
        rjCXOFiXAU9XUyzhg1wD1
X-Received: by 2002:a05:6638:250d:b0:330:a268:e76 with SMTP id v13-20020a056638250d00b00330a2680e76mr3140090jat.115.1653503928883;
        Wed, 25 May 2022 11:38:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5//BWgRhmE+0rRhiaZ5bRN6CyVatTFrlenPZ6KoQcIVG1HotsbWQ4m3s9Qilm0k05BB+aKw==
X-Received: by 2002:a05:6638:250d:b0:330:a268:e76 with SMTP id v13-20020a056638250d00b00330a2680e76mr3140078jat.115.1653503928576;
        Wed, 25 May 2022 11:38:48 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id r3-20020a0566022b8300b0065a47e16f59sm4824746iov.43.2022.05.25.11.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 11:38:48 -0700 (PDT)
Date:   Wed, 25 May 2022 14:38:46 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Mike Kravetz <mike.kravetz@oracle.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH] madvise.2: Clarify addr/length and update hugetlb support
Message-ID: <Yo53tu0CZV5izp1U@xz-m1.local>
References: <20220524232844.169332-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220524232844.169332-1-mike.kravetz@oracle.com>
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Mike,

Some minor nitpicks below.

On Tue, May 24, 2022 at 04:28:44PM -0700, Mike Kravetz wrote:
> Clarify that madvise only works on full pages, and remove references
> to 'bytes'.
> 
> Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
> HugeTLB mappings are not supported.  They now are supported.
> 
> Under 'Linux notes' describe addr requirements and length handling
> for ranges in HugeTLB mappings.
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---
>  man2/madvise.2 | 36 ++++++++++++++++++++++++++----------
>  1 file changed, 26 insertions(+), 10 deletions(-)
> 
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index f1f384c0c..c3b0615cb 100644
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

This looks good, but since this will be a behavior change and we won't be
able to change the old kernels, I saw the man page normally does this with
things like:

  Since Linux 5.18, this madvise supports hugetlbfs pages.

Majorly it states starting from which version it'll work, and when it'll
not.

>  (Pages marked with the kernel-internal
> @@ -170,24 +174,24 @@ Note that some of these operations change the semantics of memory accesses.
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
> @@ -196,9 +200,9 @@ any filesystem which supports the
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
>  .TP
>  .BR MADV_DONTFORK " (since Linux 2.6.16)"
> @@ -596,6 +600,18 @@ that are not mapped, the Linux version of
>  ignores them and applies the call to the rest (but returns
>  .B ENOMEM
>  from the system call, as it should).
> +.PP
> +If the specified address
> +.I addr
> +is within a mapping backed by Huge TLB pages, then
> +.I addr
> +must be aligned to the underlying Huge TLB page size.  If the range
> +specified by
> +.I addr
> +and
> +.I length
> +ends in a mapping backed by Huge TLB pages, then the end of the range
> +will be rounded up to a multiple of the underlying Huge TLB page size.

I'm slightly worried this could be hidden too deep, meanwhile it duplicates
part of the sentence of how start/end will be treated.

How about adding a short paragraph into each of MADV_DONTNEED and
MADV_REMOVE section (right after the new sentences upon hugetlbfs), with:

  For hugetlbfs, the start/end alignments on page sizes will be based on
  huge page size.

No strong opinions on any of these.  Anyway:

Acked-by: Peter Xu <peterx@redhat.com>

Thanks,

-- 
Peter Xu

