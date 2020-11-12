Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4F82B0FAE
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 21:57:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726893AbgKLU5i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 15:57:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726844AbgKLU5h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 15:57:37 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3796DC0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 12:57:37 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id l1so7454757wrb.9
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 12:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rlDj+ZjpPPyDv07gRKkAswRQkVXL2Z6N9OiBIwOTehU=;
        b=AsEx3fGSbH9tQm+5KbVKDGouMmS+H6rKwuDv/pV/VSCWW8XhqaQgEk7wMBJR8LCmO3
         U2ntBLhvqOZ7ZZ+t3pmf2K+OMNx7uOylIQLdwnOXUFZ2vHVaotWcRTrN47TuiXO9WsMs
         +rMOy+fKTWu92zQ3QONX0jwtjG+2/IXjhrJuXMaE7Mz8Ds8D6UEX4pKLEbhmDjpgliGg
         Pwh0APyyUozz+UXwpvyTOftjlIchnoES/zZ6mq9RCy3cO2Ae9oO07prjVBbpxUqiJYQg
         GEggsM76d3yzU4N7SIJYEtIfMYNU1SBwYN6Vv5LKfF7LdIhtPjge0ZfzqWpmoJt2vsuP
         AoLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rlDj+ZjpPPyDv07gRKkAswRQkVXL2Z6N9OiBIwOTehU=;
        b=FsifWFw7qJJ84Gzhgv+5Q/l6hbeycSRmeoFMnUk3G7qiHzvyWPXRAugsmN/hiHJuoN
         oK5ruhLbjR+p2FTGn9ICe9sJOiL0vz8vc0YbQzTKUAKvM/Iigf3mB0hYLMAVRDWtkbLR
         yr2z71SJoP3/YwalI9yk8jTnaKtSxUzORlO6AwEexQ6a+QhSdPxFIJoBxzawrzdxEQia
         TVg0sWGgM++oWI1LbXgjPkDtFa3A4b5qMh3rofRlbP8TJ5VLB6WuNS7FP7K9nHSpDZxO
         TG+BltAdCM8KS1LPr4JRWbNhdqYB9fdfn8NvKTWVIgYTPdQEcNGEDHz9noTQqnIZoEZs
         5hBg==
X-Gm-Message-State: AOAM531NIyCV/9wDkFuG79U6kN7dc4Y3CntQvI6dHvIn7gBWwG5gVmJn
        FJhKGwk3z2rk9W1XQYaa3XI=
X-Google-Smtp-Source: ABdhPJxOsniihptg12XLliUmzgqOvFC6PpBWLM3epKqDEyTBkioIk0gGZ+5D8BOjxydGpT+iNr99YQ==
X-Received: by 2002:a5d:6a0b:: with SMTP id m11mr1590975wru.190.1605214656056;
        Thu, 12 Nov 2020 12:57:36 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d16sm8394146wrw.17.2020.11.12.12.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 12:57:35 -0800 (PST)
Subject: Re: .RS
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
 <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
 <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <eaee2c6e-cbb7-94b2-f6c4-9039d184e129@gmail.com>
Date:   Thu, 12 Nov 2020 21:57:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


> * [.in 4] simply doesn't seem to work at all.
> * [.RS 4] and [.RS +4n] seem to be equivalent.
> * [.RS 4] is different (worse) than [.in +4n]
>           in some very specific scenario:
> 
and [.in 4n] seems to indent to absolute column 4.
