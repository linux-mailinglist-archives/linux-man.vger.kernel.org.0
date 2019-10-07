Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C0AEBCDA68
	for <lists+linux-man@lfdr.de>; Mon,  7 Oct 2019 04:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726927AbfJGCRg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Oct 2019 22:17:36 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:51792 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726772AbfJGCRf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Oct 2019 22:17:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1570414654;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=5I7Nl3+6Jo0qEQQi+uojWE3YBEHRgNtHas7HAdx3Npo=;
        b=g4B8V/UndB8fz4jD6D9wcMUjGlzDrWWQmhEqBMuCgSXgAfdNEBG6rRiDGM6wq2NGXozE0A
        86Un/XnmnEwoZGRu3WSQ8vGLqCfETeZA4S5y/7ylRw/zcBFhOQldwdyrvg0g8FQbZVrfft
        5BIaN9v1oncCwI9ucPwOdc9OYQubuJQ=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-eBCp4McoPsybXLjyiD7n8g-1; Sun, 06 Oct 2019 22:17:32 -0400
Received: by mail-qk1-f199.google.com with SMTP id 11so13473346qkh.15
        for <linux-man@vger.kernel.org>; Sun, 06 Oct 2019 19:17:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=lfwPgN2e5KiTpSgOF7BEUCKUZwjShs+LxHPDDYIqhBg=;
        b=UKfFFM09bqX28iK2VzU14DCtDcjse9FXQjUXYWUZTSdrhROeYeBLd+f6mK281AlDuu
         7eHrJsqmmmI/JieK++4InMIEBL4oqIekNm+bwWUnXwcw/PXQM9V3dDpoBrOWhbxwiQut
         po7T36v2hbluymJZbwV29AoWdJhuZqO0+yHJaSDo0x9M/2JHy5YJGna7dyoijB0qDkmm
         NLaRiZ0b2mN+h/WotCzIHjCAzlmKkJJaK1xKhhm2PhzadeaX/p4yaoSHmq0tbjylUS+o
         gD5Sse8MuaE1apOOrBsTTt5T5SUhgdRBcBXe3szWn9B4n2c0w6kM4lVbI4MgiKvXvfQM
         3Dbw==
X-Gm-Message-State: APjAAAX3ovGJi1E+eu1vvR7R/Qz0HA05UALgrXrzTziDHmjyJ2IUTeUL
        jnlTa7r600Q3+rVkojfvGVCWZPiBZ1NCaJkBN/KxLTTFdnrQ72C5xuoXmCsJ05Rm0G9nSNVCXzZ
        4PjSVLkPcCumYIv5yaOeI
X-Received: by 2002:ac8:70b:: with SMTP id g11mr27420960qth.58.1570414652091;
        Sun, 06 Oct 2019 19:17:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqNC2pzvInQ6GcZpAHo0Ns4Vv4URGzE4ZvClveuMLRjvWG9YaAyTYUrCk3vAKGEvmzinLS7Q==
X-Received: by 2002:ac8:70b:: with SMTP id g11mr27420946qth.58.1570414651674;
        Sun, 06 Oct 2019 19:17:31 -0700 (PDT)
Received: from [192.168.1.4] (192-0-145-99.cpe.teksavvy.com. [192.0.145.99])
        by smtp.gmail.com with ESMTPSA id m91sm7187236qte.8.2019.10.06.19.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 19:17:30 -0700 (PDT)
Subject: Re: [patch] Describe issues with cancellation points in signal
 handlers.
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
References: <953b30ef-6546-ab16-06cb-e9d8d179dce2@redhat.com>
 <165a5e50-6c0f-7464-44ae-e74ac10a6e55@gmail.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <e9f8e552-1b23-b54e-cfb3-b1b2cb715e09@redhat.com>
Date:   Sun, 6 Oct 2019 22:17:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <165a5e50-6c0f-7464-44ae-e74ac10a6e55@gmail.com>
Content-Language: en-US
X-MC-Unique: eBCp4McoPsybXLjyiD7n8g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/5/19 7:48 AM, Michael Kerrisk (man-pages) wrote:
> Hello Carlos,
>=20
> On 10/5/19 12:12 AM, Carlos O'Donell wrote:
>> In a recent conversation with Mathieu Desnoyers I was reminded
>> that we haven't written up anything about how deferred cancellation
>> and asynchronous signal handlers interact. Mathieu ran into some
>> of this behaviour and I promised to improve the documentation in
>> this area to point out the potential pitfall.
>>
>> Thoughts?
>=20
> I've applied this. If some review comments come it, I can
> tweak the text.
>=20
> Thanks!
Thank you! I tried hard to keep the "asynchronous signal" and
"deferred cancellation" terms all consistent. It's all a bit of
a mouthful, so I'd be happy if we could have come up with simpler
language, but it's hard to write it any simpler without loosing
the exactitude of what I'm trying to say. I'm happy to see future
edits that simplify the language. At the very least we now say
something about this corner case so people aren't caught off guard.

--=20
Cheers,
Carlos.

