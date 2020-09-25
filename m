Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 307FB278786
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 14:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727749AbgIYMrD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 08:47:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727044AbgIYMrB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 08:47:01 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99D58C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:47:01 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id z1so3485410wrt.3
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 05:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XG6jAok4VkrgSSQHqr5SGuPLRRtMRghCzP5oWjsjP+k=;
        b=ccl1Q/eR4gIwvc8Gx+Irli5QzJptwTLyTBaorV0R9OlIQJyzuN133RcMVh03CWWxKu
         n+NQCHsrtfC7IKA3619xSqX2fFPra3ZpJlZo7t0EjblMY7OwlxfMGrIaSj1Jp2ttUVQl
         0UrVTA6snTESKp+xOP6mSAp6vv/D1uXNFm9JbzE67KsWrU1yde+mnjIJnoKwJEFHndUA
         LUl+sKSX1gilv+33ip7iKeNCJemX8+bx5kFK6qUe2owBJxbCkU5CtI/uRJwff8Dc+exK
         oyml/AFvfygMCrjY2qV0Z8R7URYpRiE5QPebdbsaS592eoFHInJwXBm+n0mnw/lKW6rN
         8F/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XG6jAok4VkrgSSQHqr5SGuPLRRtMRghCzP5oWjsjP+k=;
        b=G48UnabFsWZ81dUW4YTHyou4kPDnMq2YDKPhmE8UJJPq1bCSWwyxGa6dlf3bW0UB6H
         PzBlb6Zl8IDpMd8sgnDmM8M6pwIYyYRQUmn6FAeGb5w5neDEg4Eby9h0GZNUPr4uH7Q4
         eVb+a4Knsq3EUfjdGP0bvMczHODlbxFR1kdAwb+EZ0KMnIG9RfEU0iqBWX6FaVj1hyh6
         WGIn5m6xL6bSp7P3r8IPEzveEaza7zB0h4z1O2PtdUnNhSWdb/TfQVWr++GIJQXTbwyL
         igPD1W4DNEBvVLfKVmbso8BnLsQ665qBkCZ3pZmco7V/+rPb9k8BJ0iVN4OiM1CDlhnV
         +XmQ==
X-Gm-Message-State: AOAM533aLVDRB3UiHgfe2LSHwJPhQ9ehS6ZRo6wng6iE940NE2Qk12Op
        xD6FRhcC/oiwie+RrZgBTrFYZ1rq12b2Gw==
X-Google-Smtp-Source: ABdhPJzei05xt2XScg4sCAlkqyXemPmhN9cn7EfWAgUEPyasPN8rRTgsmUVcy6WBw47KlND4GF7Isw==
X-Received: by 2002:a5d:5602:: with SMTP id l2mr4614154wrv.410.1601038019635;
        Fri, 25 Sep 2020 05:46:59 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id f16sm2732216wrp.47.2020.09.25.05.46.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:46:58 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] system_data_types.7: srcfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <16c0890e-33c0-d052-d7ee-39385cd79299@gmail.com>
 <20200925112822.223218-1-colomar.6.4.3@gmail.com>
 <2a399b41-0fe7-4c38-c014-100728790f41@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4ddf5b18-e2a3-1630-0dea-48dd237707ab@gmail.com>
Date:   Fri, 25 Sep 2020 14:46:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <2a399b41-0fe7-4c38-c014-100728790f41@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-25 14:02, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
>> I learned a lot of git today :)
> 
> :-}. Okay -- you can probably give me lessons!

:)

> 
> Okay -- I declare a sync-point: as far as I know, I have nothing
> outstanding from you. Let me know if I missed something.
> 
> Cheers,
> 
> Michael
> 


Yes, everything is synced.

Cheers,

Alex.
