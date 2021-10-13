Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCC0442BBDA
	for <lists+linux-man@lfdr.de>; Wed, 13 Oct 2021 11:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238388AbhJMJp4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Oct 2021 05:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237703AbhJMJp4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Oct 2021 05:45:56 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28DC4C061570
        for <linux-man@vger.kernel.org>; Wed, 13 Oct 2021 02:43:52 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id e12so6258101wra.4
        for <linux-man@vger.kernel.org>; Wed, 13 Oct 2021 02:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=e0Y90IFF8qnjRv9BJ8OePN7HyClV0ME2xLvcHc+niRU=;
        b=IsirYX/0d1b2AZu0aldPQLuMyxmOBpyMO4iZMDse+BmNzhc8RYmWlDI6K6v4MGF92M
         xNyfJBdpVYIu2SKaLNljpnC4i3S7dJuBnSQHnSqUR9mFMSswtfVxV5cNmIX5xg2vVwEZ
         V6b9t2vFLXim7DlNvW9DPkTf/+xyDdTRWzi2bIuy1wLqtgrctB2i8+AqhqEKJhF1OVzk
         Gz46ybeUsh08GpBJX1lLXMZX1tlnVG/HFVbO/DQFlfLV85NTkogKHCRMFChnnACdT0qj
         xn5wNEqknjayKHMBGo4zcHbywzudYxefyT4PHjwdgAmHZCK2vsGixWPEGk1KbMj1Jc5K
         A/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=e0Y90IFF8qnjRv9BJ8OePN7HyClV0ME2xLvcHc+niRU=;
        b=GMcW4GCCQpxt/+RMSrbGglX/kO5wxwItzvTH//vIoIPFg04/ny88oNaLC0SzPik4Ec
         fVkkN4sdNvTBCz+x3JX+BqtaqypRVnvvmDW88ZvRdhk17fBzop/yAxWATaIHvYYwSM9b
         nVPW48TInYEbtU975P1qmWR+o1OJyen9DGFKMuZJeLlNZHGsYfc4Dc2taF/EBqs8fwFZ
         dmFWj1DdBMZs+1Y6zPMCcrdbKnKHfeKXMDSWPYd5+BMzWxfyEm9Kjo6XD8+DganNiqLe
         FkAAButqcqTo1eIN8DbH+bqpq1fMlQiq9yOUn+Ay3XU+1bVl1x/SMv9J1qoahVCxdxUf
         nPBQ==
X-Gm-Message-State: AOAM533gwQGTLh9YlrQAXzHiMYeQ/kNi1tqE6BjJ5Mh5srhVpOOZKjaa
        7BDvYi6o62RkU8y3lkw2WnUFe63f/Q4=
X-Google-Smtp-Source: ABdhPJxrX8tb0FK7FbV+9C5s5BvqSCt+viShiFpDEGonfzbjhwDcmXOV42l4VgI3JwIB38VHW8zjWw==
X-Received: by 2002:adf:a54f:: with SMTP id j15mr38039690wrb.218.1634118230627;
        Wed, 13 Oct 2021 02:43:50 -0700 (PDT)
Received: from [192.168.0.126] (cpc139384-aztw33-2-0-cust220.18-1.cable.virginm.net. [92.233.189.221])
        by smtp.gmail.com with ESMTPSA id z79sm4848932wmc.17.2021.10.13.02.43.50
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Oct 2021 02:43:50 -0700 (PDT)
To:     linux-man@vger.kernel.org
From:   20kdc <asdd2808@gmail.com>
Subject: ipv6(7) is confusing about byte order
Message-ID: <1a188546-e13c-3e63-026f-3bce1769e933@gmail.com>
Date:   Wed, 13 Oct 2021 10:43:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello, this is just a quick report:

ipv6(7) is a bit confusing about the byte order in the sockaddr_in6 
struct, particularly in regards to sin6_flowinfo, sin6_scope_id, and 
other fields not in IPv4.


