Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5DC354555F
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 22:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240858AbiFIUNe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jun 2022 16:13:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238643AbiFIUNd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jun 2022 16:13:33 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 93E4F6572
        for <linux-man@vger.kernel.org>; Thu,  9 Jun 2022 13:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654805611;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Sfkcy2khFjdseK3OUXScUbNizZN2+TrVIqo7A7uaLgA=;
        b=JC4rCu5IKQSabjOgWStR+0VFYlbW3WPgB28NEDtFH7TjS80cP+kSzh/SEDSJNdmPFyH0B4
        4vm7x2WdLBZkFkL1+3z1U1a96NKTwBkzFnH9mcmUPdh0GH7KZWMIaBz58lLHlMAqbgE47A
        9QfIdVSRsTRwONaC+B+i4YqZlEBaiJo=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-xk4VTWIcMI-jXedeCKOr0w-1; Thu, 09 Jun 2022 16:13:28 -0400
X-MC-Unique: xk4VTWIcMI-jXedeCKOr0w-1
Received: by mail-il1-f200.google.com with SMTP id r9-20020a92cd89000000b002d16798b3cfso18317013ilb.22
        for <linux-man@vger.kernel.org>; Thu, 09 Jun 2022 13:13:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Sfkcy2khFjdseK3OUXScUbNizZN2+TrVIqo7A7uaLgA=;
        b=QHTdRaQVqYUQIz37EEmZ9oTslfQ1RZBUL0wt0kj8bGBW2AL8sWMZ7nPARsNIDzvGqQ
         rtZECiaQRAjAsbg/IyH7pYxZzIhvnUTI72jQDhxzodAOFtpKPFpkfLzAYksk+BY/Is0j
         YNPyAUK9MwWwpdDBLsCU3cYt7xvZdFk12XBsUHserCp78AiJLwLvJGI54Z9q6nvDAZo/
         6hNnBwkNxd6OF2akOK1pz25BNHEmDIzl11gXI+w1xRCqYh7sLJMXJVEF62xV/Tt3YeuX
         Gex4yr8gXh1a3aOUvUSK/sloWQ6du7+b/Xdmn4Qrn/ciCXMCr+OrBKJnwbPt3TrU14jb
         Rc0g==
X-Gm-Message-State: AOAM530t4T4BWOQcBJL+lYVJsTy4726M4t7dZATCTRiS7j1A7vwk79p/
        jibSAwZXRih/qa1y0N5vbPXaIc3B88akod6xY1BxkSRmFVD0dgmo+2OOYTB0Y1xzgOURXg8ABrB
        v6kaVQVmJ6ac3JZ6jl6/k
X-Received: by 2002:a05:6602:3994:b0:665:3ede:c149 with SMTP id bw20-20020a056602399400b006653edec149mr19671633iob.72.1654805608017;
        Thu, 09 Jun 2022 13:13:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyx75hnzQeKoMt1Bnyi15VyNz8IpcULfT2bJ2XJAWWPinynk57gqIGGVxNT8+bXCESVdkX2Fg==
X-Received: by 2002:a05:6602:3994:b0:665:3ede:c149 with SMTP id bw20-20020a056602399400b006653edec149mr19671621iob.72.1654805607780;
        Thu, 09 Jun 2022 13:13:27 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id cp5-20020a056638480500b0032ea3ba170dsm9939802jab.86.2022.06.09.13.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 13:13:27 -0700 (PDT)
Date:   Thu, 9 Jun 2022 16:13:25 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Mike Kravetz <mike.kravetz@oracle.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Message-ID: <YqJUZcol6c7HL6Dt@xz-m1.local>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jun 09, 2022 at 11:48:06AM -0700, Mike Kravetz wrote:
> On 6/9/22 06:24, Alejandro Colomar wrote:
> > Hi Mike,
> > 
> > On 6/9/22 01:45, Mike Kravetz wrote:
> >> Clarify that madvise only works on full pages, and remove references
> >> to 'bytes'.
> >>
> >> Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
> >> HugeTLB mappings are not supported.  Indicate the releases when they
> >> were first supported as well as alignment restrictions.
> >>
> >> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> >> Acked-by: Peter Xu <peterx@redhat.com>
> > 
> > Please check some comments below.
> > 
> > Thanks,
> >
> 
> Thank you!
> 
> And, my apologies for not looking at formatting requirements.
> Will send a v4 shortly.

Alex,

Do you think we could add some of the semantic newline requirement into
CONTRIBUTING file explicitly?  Although there's a pointer to man7 man-pages
but the semantic newlines rules seem to be easily overlooked.

IMHO there can even be examples as you quoted in the link on "UNIX For
Beginners":

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/man-pages.7?h=alx/main&id=6ff6f43d68164f99a8c3fb66f4525d145571310c

Maybe that'll ease both the maintainers and the contributors?

Thanks,

-- 
Peter Xu

