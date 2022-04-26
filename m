Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7198650F92C
	for <lists+linux-man@lfdr.de>; Tue, 26 Apr 2022 11:58:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347458AbiDZJu4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Apr 2022 05:50:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347854AbiDZJuZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Apr 2022 05:50:25 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7442010DD
        for <linux-man@vger.kernel.org>; Tue, 26 Apr 2022 02:06:57 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id y3so14322297ejo.12
        for <linux-man@vger.kernel.org>; Tue, 26 Apr 2022 02:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=y8cxzUPeA/1NTAqf+0bELgQgo6NleXzy7R+kj9eBCJI=;
        b=ielBkO36gl89DCP+MYZspSFloUWilnrjBruJ3vz61LAw8kNiQSjQo/4QD5fVEi1Zk6
         Ug1EE5IJsBFEexhG2DL+lpE/+iyQQBQs/pUw0U6Afff27cBGavIHAcN676uUpR/Ib/If
         VlKzsD2etkR0XS9gXCLc0GSi+qg1BSh5T3+xM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=y8cxzUPeA/1NTAqf+0bELgQgo6NleXzy7R+kj9eBCJI=;
        b=plRXRMwnRlLLsCjX86B7jCQn5bBK9+3a7EaPyUrohg8CfENIBzHQqrJl6jPXtTt/cZ
         3B7mAIhxhbjLoNd4MoCKPr3z+3HCYc2nJRD4sPecqA1Yyx7cgJvM+p+QnfOiHNOhkUTx
         JxC2iAzXMkMKCbIcXG1Iu/Ur4x4UCG62/0bSxnqyjOgvAtVCOglWfpWHi9BJBBPbKk1n
         UItFe33EKi5n7pKkSB0ScZhm8wks5+iTmsZ8B6vuKGxICRfMXeZeRgZlsUWWP5AHgqpE
         9bfNRajuEs9Wl21Miz0M3UUYuOHmQwLao61i+sg3Of6EQvENnNaBWn54EkjYXDETDG0J
         2RkA==
X-Gm-Message-State: AOAM531aYonmDDzem4snkPOLC37rCrtrtdVReIqBZ1GXyR8eQ5bjbsY2
        I7UxWT1SXf1mlwhmhfSYQkD0Pw==
X-Google-Smtp-Source: ABdhPJy+jKKaj7TJ4z9PfEJpfFFYHuylNp+uJPNooZZcAUZOdhg6ZYZAdPRrunqaGRIme0cEdQGu5g==
X-Received: by 2002:a17:907:3e11:b0:6ef:78e3:8d9b with SMTP id hp17-20020a1709073e1100b006ef78e38d9bmr20390515ejc.373.1650964016074;
        Tue, 26 Apr 2022 02:06:56 -0700 (PDT)
Received: from cloudflare.com (79.184.126.143.ipv4.supernova.orange.pl. [79.184.126.143])
        by smtp.gmail.com with ESMTPSA id b89-20020a509f62000000b00425e21479fdsm3110541edf.19.2022.04.26.02.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 02:06:55 -0700 (PDT)
References: <20220425160803.114851-1-jakub@cloudflare.com>
 <31702ffb-380f-69f9-ab87-3aec5b22537c@gmail.com>
User-agent: mu4e 1.6.10; emacs 27.2
From:   Jakub Sitnicki <jakub@cloudflare.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, bpf@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>
Subject: Re: [PATCH] bpf.2: Note that unused fields and padding in bpf_attr
 must be zero
Date:   Tue, 26 Apr 2022 11:05:53 +0200
In-reply-to: <31702ffb-380f-69f9-ab87-3aec5b22537c@gmail.com>
Message-ID: <87h76g6wnl.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Apr 25, 2022 at 11:01 PM +02, Alejandro Colomar wrote:

[...]

>> diff --git a/man2/bpf.2 b/man2/bpf.2
>> index 2d257eaa6..ee57226ee 100644
>> --- a/man2/bpf.2
>> +++ b/man2/bpf.2
>> @@ -142,7 +142,7 @@ provided via
>>   .IR attr ,
>>   which is a pointer to a union of type
>>   .I bpf_attr
>> -(see below).
>> +(see below). The unused fields and padding must be zeroed out before the call.
>
> But I changed it to add a separate line, instead of continuation in the same
> one.
>

Thanks for the fixup, Alex. I will keep it in mind for the next time.
