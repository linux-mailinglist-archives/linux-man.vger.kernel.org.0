Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A90116A5FEB
	for <lists+linux-man@lfdr.de>; Tue, 28 Feb 2023 20:47:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbjB1TrK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 14:47:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbjB1TrK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 14:47:10 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C0871CF48
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 11:47:09 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id d30so44787816eda.4
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 11:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677613627;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NhP+N1/NSzlfjgw3sw/PAt+GbzQF3d+h/y0n1opqgwE=;
        b=oQ1ef43XNPpigRjBCYXFAAvYTIih/R4bWxqxiz+1BOnvITSrNiW8oby8l5cbIqSZeH
         Pablm4djDpaPlgtv8am4fqZBH3Z2tNPbkUe7mWN6H7zTEgjt0I9l0Se5jo2sEXNyTAgc
         ANIsH2OMODx7Wg3NMMs7c2vV8amF8hDeUAYa2B2rI8EeQGfnNMMa8xX0BEz4/kFbvEBb
         L/4SUjyHSRbUVIxp8AbWTlYi9+jyW86tNj3zL26TFN4flfVzYQxSWFkZhKyHFrgDBmyc
         P/10jlLbZcNGa0IiJqcsAPeCTkGD8dln6FQiImuCqiEElIrV1N3o1v7jB53fyOyrWRtj
         ZbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677613627;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NhP+N1/NSzlfjgw3sw/PAt+GbzQF3d+h/y0n1opqgwE=;
        b=rZ4e/e4Uol0Xcqh7/M9W1+zDNbd7cntwQqWqEGa/NPvBSyWAJu00ICv7DnWJF74RdG
         kXH5e/tBPjKwCF+s8AeU8yAE3srIlvkl4CDxX0MK3pV1Ly/f6VbqgVAwdw0v1h7YgzMO
         fAuXriy/QlLvsxGzZCywzBV8pDBlA1Jd8up2If8Kj3FJ1hDU/JsiaMGmgLXOHLs9XHUl
         s4qA6/YWYUCEtpWno8pSrt/lspAIEbEPOxC8bw0GRZBTiftRA1dUaa+57yOCuxpUgWXE
         KynO+KW79IGZ5oEece5O3GoMVyJ3X9CziDvpG0HFdxlBK0nXDQULC1i+UUkQ2h564Gtu
         rW+A==
X-Gm-Message-State: AO0yUKWJGPkT/6FjfT1jenclVRhiV1GtppL9/BXorz1l1ByptRlDUN4D
        cT5bnXhsx7BA1xbpRu/GWy6B4u5lvHw=
X-Google-Smtp-Source: AK7set9UX6pPjpNACrfi01qVxJmIX/PKAosFSxBLoa7NEemGrSv6O5nxNgc6HZyywRvioAuTlkCf5A==
X-Received: by 2002:a17:907:8c09:b0:8e9:afb1:65c6 with SMTP id ta9-20020a1709078c0900b008e9afb165c6mr12718904ejc.13.1677613627445;
        Tue, 28 Feb 2023 11:47:07 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id v23-20020a170906489700b008e9ac1ad79dsm4814780ejq.194.2023.02.28.11.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 11:47:06 -0800 (PST)
Date:   Tue, 28 Feb 2023 20:46:54 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Groff <groff@gnu.org>
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Message-ID: <Y/5aLjmOJn0fzdFp@galopp>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
 <Y/coag7XQRIRDK0h@galopp>
 <d6b21981-71bc-4906-2adf-79b00df38b73@gmail.com>
 <20230225011917.o4hkprqg4c2gqd7u@illithid>
 <17e144f2-b857-5639-0961-3003fc8228a5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <17e144f2-b857-5639-0961-3003fc8228a5@gmail.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Feb 25, 2023 at 02:29:12AM +0100, Alex Colomar wrote:
> On 2/25/23 02:19, G. Branden Robinson wrote:
> > The '.sp 1' workaround (which is synonymous with plain '.sp') can be
> > removed when you feel groff 1.23.0 has spread sufficiently.
> 
> Since the bug is so minor, I'm in favor of removing it as soon as you
> release.  A little bit of lack-of-blank-line inconvenience is not so bad.

OK, thanks for investigating this!

I'll keep it in the man page for now then.

–-Günther
