Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B68131E6573
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2020 17:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403890AbgE1PFO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 May 2020 11:05:14 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:40802 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S2404204AbgE1PFM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 May 2020 11:05:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590678310;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Sc3XfYmyMpNaVHBqOp7H7H0Kk4rgrGkiOt/d9Tvt4qc=;
        b=hQFzTZMLUETEbrrDyMkNQOu/A5bctWSlGl3VfLMr2AI2DNgY71ODe4TkaXfrsqT7Qm1veh
        1htDBdIPLCoUjZmGqw/tEBzywXceQi4njiTPY3tEvfPrPuiv/7KxyIEohwg6uUYPmy2xu7
        qdUG2VgAuINt+GE3GZbqWygIL+a7JTo=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-rufa6WpVMvKL4cNhgNI8qA-1; Thu, 28 May 2020 11:05:05 -0400
X-MC-Unique: rufa6WpVMvKL4cNhgNI8qA-1
Received: by mail-qv1-f69.google.com with SMTP id v1so1743637qvx.8
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 08:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Sc3XfYmyMpNaVHBqOp7H7H0Kk4rgrGkiOt/d9Tvt4qc=;
        b=Zyrxf4YoevFkbYdamfL99nzI9vkedsMbwtX++Oy7o2VYFIxF5xepEBM8YcUNA+4T46
         nrerZEU6oP+G/LTfoOhjhSXIg6I8pNFKme32ILJX/lfTIGxpMJ1H06a7+7aGE+Mp3CPv
         YTw6GNwp0JOSe5VpJ6+CEdXwLuWyh8KoMAeaRq5OoTHXI8aN5Te7EWb6rv2PH67myx8V
         cykQk4ITwBKEZQSLyca7FpJgRCGvPtkIYePRngGoB4/Okkv+CMAtigjrnjldGXWcLt7k
         V5FApMql/5baxGLzTP77uNpszUSvdI+XRim47P28njeEe61/cj42AwKAvgeV2X3vN/Au
         9cSw==
X-Gm-Message-State: AOAM533ZwH0Pb3+KaPAxan6q1ZTiPeQG9x/ZPuEspUHEhwc4Q1xaAjh7
        uFdUMxpeysbyD+ZxDWcDXQHVJPCIkV8N8n+G/XbodjBoAT0sGKrtvFuexnos7Nxw4TKqOLlwpOx
        s1szrwlgNgG10PbK6Ojqs
X-Received: by 2002:a37:9781:: with SMTP id z123mr3241617qkd.266.1590678304497;
        Thu, 28 May 2020 08:05:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzg/uZ+PRcW+KijP/W+rgy7IcnznaFPZINsbmwirZwO968VpV+LDfaphMsOByoroF0Js5sC5A==
X-Received: by 2002:a37:9781:: with SMTP id z123mr3241571qkd.266.1590678304280;
        Thu, 28 May 2020 08:05:04 -0700 (PDT)
Received: from [192.168.1.4] (198-84-170-103.cpe.teksavvy.com. [198.84.170.103])
        by smtp.gmail.com with ESMTPSA id s45sm5892933qte.26.2020.05.28.08.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 08:05:03 -0700 (PDT)
Subject: Re: [PATCH] ld.so.8: Update "Hardware capabilities" section for glibc
 2.31.
To:     Florian Weimer <fweimer@redhat.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
 <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <77a78320-3d10-96b4-d385-c7a42196ccc1@redhat.com>
Date:   Thu, 28 May 2020 11:05:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/28/20 5:35 AM, Florian Weimer wrote:
> * Carlos O'Donell:
> 
>> +The following names are currently recognized as of the release of glibc 2.31:
>> +.\" This information comes from glibc's sysdeps/*/dl-procinfo.c and is
>> +.\" currently not directly documented in the glibc manual. We document
>> +.\" it here with the help of the glibc maintainers.
> 
> I'm not sure if this list is correct.  Did you filter the hwcap strings
> based on HWCAP_IMPORTANT?

Oh good point, I forgot that some arches use _dl_string_hwcap() and other
arches use _dl_string_platform().

Let me filter these quickly based on the selection, and add some more comments
with the appropriate notes.

Wait for v2.

-- 
Cheers,
Carlos.

