Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B0C02B023E
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 10:49:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725979AbgKLJtF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 04:49:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725966AbgKLJtE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 04:49:04 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 500D6C0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 01:49:04 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id p22so4675123wmg.3
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 01:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HWtb6cnUSnjXBEs2B8vTOrD/nvGeUgVHX0nUOeGKSn0=;
        b=mp+YlSLrPTcKE+ymGZV7E2XqYHB6kjTgZ5GWHm3PF5TFHKTJ5hRAH+9T8kjsf5Qph5
         /ZZB/1rQtxyvn91gHnvtom0hxSz3/dbb+r29m9iDF2jcwWuFAKIbFcBGePE0dCJcSWiP
         rQ2zXBMoMlCA20nvfDNS3OzZb0V+Vpn39VTE55yiX1vpCbb1KfxP4XsctpJ9M5EnsvzV
         /xbkc7TWW+Iv3vMWStgMc2CMyjsmHwfgCxTUL32AlczZxURxjqQRMnCm2EvS2fGPZuCv
         2FkHo94BSs63shch4kKnqyDocvV7oaVaiCPu0hwWRIYnshAg8Dpe7HLp9yv4cXd9r4D2
         w5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HWtb6cnUSnjXBEs2B8vTOrD/nvGeUgVHX0nUOeGKSn0=;
        b=XG838b8CcLz9KL0aTF66D2w+AlJBCbCJkEIMNwpYnAdJo9rnuQCUxeHjXq7VzqV/fZ
         8J4IPPUC1K/7vxtSdifQLkO06xQlJZ+XGnAhWqunms5lCSFpQ3t11o6n5SdXYrj6Kxrt
         x7aZy+k+PIMij8ujPtXJ7jNK0H353JA1/HZJsE+r5S7EE7+BRCjbkTVy4+K8N2jbSNKs
         vLd6IzNyyjksUNo0ttBKGKolLe+384LRn5LWFJOc/wrv+F9J98P8aXd4J2JVYrZrRGUa
         uWFZMWae87i9iR33VU91W0a/gyiziUXhOWOaBBnMP6pAuP+MHe4hhItneNw7FfhJtirr
         Fndg==
X-Gm-Message-State: AOAM530YlPlTU4upGyGR91Z668cv5s4RXVuNrUZcbEFcEak+ZbdJM1ES
        HT3VP1FUhcggdvPKxPLQDpU=
X-Google-Smtp-Source: ABdhPJz9kN3NGRcjvBP8XMO+yPj6U6cXJq8dtRkv7QmDDbgmknjMziUXFZRQvddZ3UGyeTBb6FoFew==
X-Received: by 2002:a1c:4b0c:: with SMTP id y12mr9326722wma.91.1605174543116;
        Thu, 12 Nov 2020 01:49:03 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n10sm5895350wrv.77.2020.11.12.01.49.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 01:49:02 -0800 (PST)
Subject: Re: .RS
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
Date:   Thu, 12 Nov 2020 10:49:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks again, Branden!

Cheers,

Alex
