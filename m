Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB36F53534C
	for <lists+linux-man@lfdr.de>; Thu, 26 May 2022 20:22:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234573AbiEZSVs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 May 2022 14:21:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349460AbiEZSVe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 May 2022 14:21:34 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CB148225
        for <linux-man@vger.kernel.org>; Thu, 26 May 2022 11:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653589281;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=38XfMoTF5WehrxS/C0ikgszal87kQNkQiqnwAIHjLi4=;
        b=JuSZcysjdovTSp2RjMdm1YoEACQDOZhjcGAB8R/6GCL93MtJ0fG1m3Xrz6rg2WuPHtDS4g
        pDKjE3se73ITkR2584KqZoFPM7UqT81mzk3eC6xq5i6O1pUl1kZ3ujIAaEoGOgN2FBt9Hf
        WFNx9Yef7+MKCHkDRaItPhK84BCLQ50=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-377-YDj6Gd0aNZ-UIySBQpddpg-1; Thu, 26 May 2022 14:21:20 -0400
X-MC-Unique: YDj6Gd0aNZ-UIySBQpddpg-1
Received: by mail-io1-f71.google.com with SMTP id i189-20020a6bb8c6000000b0065e475f5ca9so1457433iof.15
        for <linux-man@vger.kernel.org>; Thu, 26 May 2022 11:21:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=38XfMoTF5WehrxS/C0ikgszal87kQNkQiqnwAIHjLi4=;
        b=VIxFK+97ZVZTLJtSxki1UU0tYcr4JKBbmGQaDYO7snMnIxugatm/cJ71EsKwKTcLH/
         PGpk1Hyv+37rRnjHHoE9Ct59fL4w6ti1awIlXcqZO22z1IqsRW1d6QnZwxmymMyZHEIg
         s6x4Zy32poGgTV7IwyGOjKA3KGTEPadvfSGJxn5/dycaKIem2JVMqyGn2HG88I2WHP4L
         zRip6H5v2EAO0lURqSNtS43fmJJdzezpTEwPuqcQeT2nCXhwOusjoP7ohGq76E4lXF3V
         M0EYF6XSLL1DZRpkR+0asQ480E/3hi/6Uranw+SYa05mMXdxDVgEYRX2ijHV8sMzfiKQ
         XZeQ==
X-Gm-Message-State: AOAM530Q1pT1frKItHEl/AtOcEQrsIGOyOPcBFWsu5tjrmrAs/vXepsX
        A4ZoKbIylGxX/I2pAT2XGde0NzIcVaaNNiaczKzdk5gpa6lOvd251y26JTGFmuk8TSSG6GeLqTm
        i0O028RbjP4JxR96+hZdx
X-Received: by 2002:a05:6e02:1a83:b0:2d1:bb9a:bade with SMTP id k3-20020a056e021a8300b002d1bb9abademr9267857ilv.189.1653589279431;
        Thu, 26 May 2022 11:21:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyo5uCGVz7N4PsOjlmPY3+QoQqTSmWgB2Y2AsCOvEfX+S0xJlQO5axkD47k+matdsY1HWTlrw==
X-Received: by 2002:a05:6e02:1a83:b0:2d1:bb9a:bade with SMTP id k3-20020a056e021a8300b002d1bb9abademr9267850ilv.189.1653589279231;
        Thu, 26 May 2022 11:21:19 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id n20-20020a922614000000b002d1d8de99e7sm615065ile.40.2022.05.26.11.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 11:21:18 -0700 (PDT)
Date:   Thu, 26 May 2022 14:21:17 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Mike Kravetz <mike.kravetz@oracle.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH v2] madvise.2: Clarify addr/length and update hugetlb
 support
Message-ID: <Yo/FHRV+i1VNf+o2@xz-m1.local>
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220526180950.13916-1-mike.kravetz@oracle.com>
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, May 26, 2022 at 11:09:50AM -0700, Mike Kravetz wrote:
> Clarify that madvise only works on full pages, and remove references
> to 'bytes'.
> 
> Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
> HugeTLB mappings are not supported.  Indicate the releases when they
> were first supported as well as alignment restrictions.
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>

Acked-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu

