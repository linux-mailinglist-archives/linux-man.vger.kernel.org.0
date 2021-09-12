Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 126E9407D68
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 14:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235062AbhILM55 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 08:57:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233339AbhILM55 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 08:57:57 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF6E7C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 05:56:42 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id u16so10176533wrn.5
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 05:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=DEsxTkp0UPMlew7fqpm8n9NXBAtpsA4PD9L9nXOF3u0=;
        b=AgmrDGO8KHKBmVSMV6iaTCP6VNgox4V7FvIcAaR/h4wu2E76oQ560rT+BCc4CUdXR5
         O04L1HIw/Tu2NpbKbRkEuY6mbH/iQWAjTOfDRCI546/q4u6S3AAnZJwSBcTGkdjzBjKo
         VO2MLaZH4+88pPssqE5ab12yzwSEHly/o3dTou11BtB+6GHtu9UwBPpLt41+SyfjCJzp
         9swr9Y0fzfoOZOMDplrdsdQN4gJVFMLTaj4apn4K1vgTAvtPBrSDlSXYnPDjvNPcClvt
         VWGVJOqiO4+cZ8XRo/9g/2+4tIY7D7QEoSW3nGSkc9XAsW+jwY1DNGay8nw+MWt5Gk9+
         kjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=DEsxTkp0UPMlew7fqpm8n9NXBAtpsA4PD9L9nXOF3u0=;
        b=uLhxWV9b7+bbZmKeG/wReTYOCmLo80fOX4Z7DodQPBH7kvQfXqiiLNhSSkaJa6s0qp
         GmbL99QRzY7nwLKi7l6Fxo/1nFxqJes2I/8Bkox4jFs2OzuzTAa/6o+TnZ8cEaciMVN0
         I3Iz5MpNykTkY6f83CP82/e3UE+uHsKE67pzAySZCJadH9k8WS3ulfRGmv+M+e0RuDPn
         cV3P3FfKlKdN/xyolI+2ki4ux+eHIKO9nTp/hJ+Tegelpx2ToLbfad3gk06SorN5NrG7
         HitSi7rW1Gw5c12r5UA32NXJMMpK4Hfy2J/5/hujfmFKypuZaWXUa9ctLrJ96ZkLC7qL
         GnzQ==
X-Gm-Message-State: AOAM533eMGfDtaGgWdhlF+vcgEMqk9OMnBdPeC2Lm3Gj5yTYnBYEgY4f
        hDu1mNv242hNUJ+73XAEowUQzXmC62I=
X-Google-Smtp-Source: ABdhPJzSTelG9jHa5BeOoWV7LTHoC7Mw1DRpN/55gTaE68hnP6ny1HuMpzeXc2++Uz7MFcWbB0YRDg==
X-Received: by 2002:a5d:4f88:: with SMTP id d8mr7528665wru.358.1631451401347;
        Sun, 12 Sep 2021 05:56:41 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id j20sm4592629wrb.5.2021.09.12.05.56.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 05:56:40 -0700 (PDT)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: .B, .I disable hyphenation?
Message-ID: <ebbf8dab-6fd0-2fb8-d29b-b7146f79398d@gmail.com>
Date:   Sun, 12 Sep 2021 14:56:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

Usually, when a manual page highlights a term, either in bold or 
italics, it usually is a special identifier (macro, function, command 
name or argument), for which hyphenation can hurt readability and even 
worse, turn it into a different valid identifier.

What about disabling hyphenation for .B and .I?
Are there any inconveniences in doing so that I can't see?


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
