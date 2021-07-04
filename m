Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8272D3BACBE
	for <lists+linux-man@lfdr.de>; Sun,  4 Jul 2021 12:32:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbhGDKfL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Jul 2021 06:35:11 -0400
Received: from mo4-p00-ob.smtp.rzone.de ([85.215.255.23]:17776 "EHLO
        mo4-p00-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbhGDKfL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Jul 2021 06:35:11 -0400
X-Greylist: delayed 358 seconds by postgrey-1.27 at vger.kernel.org; Sun, 04 Jul 2021 06:35:11 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1625394393;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=oTvGo1+vTdTFukXGt3THZjAB4ofoijN24yn9QqIS9kI=;
    b=DUrAYOfJIsqjClKmdLHWWBmGQLKgZ3EOgWSk/HeO92/u+UCJaY3KbH40gjFkYniLbI
    yfScLVkeB4MPYcxjxgjNn+1TO4selSUARZpYGoZRcfIRRiSl69bX+f0sCY43CLQjGTsm
    cD8OjHoUwCGGLNu9e2O6LmjMhig0TfQEhAc0wSfhOHUrydRh5PcJkemzqcXvxpjlO6BC
    E9UH99GSpDDCX4ylJDKhu+u+0344P8OrH0ZX6DzG9cuPIyvldkHO4UAAHCkMblBcd0Mv
    TijCSgG6dPEyFZl5n6dO9tHef/1Eur4mcc6hQV4RR/k/+WtVUrVo2ZfDkbxQBs8ySQSK
    9WYQ==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH+AHjwLuWOGKf9yfs="
X-RZG-CLASS-ID: mo00
Received: from bruno.haible.de
    by smtp.strato.de (RZmta 47.28.1 DYNA|AUTH)
    with ESMTPSA id e088a2x64AQXHjG
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
        (Client did not present a certificate);
    Sun, 4 Jul 2021 12:26:33 +0200 (CEST)
From:   Bruno Haible <bruno@clisp.org>
To:     alx.manpages@gmail.com, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org, Peter Radisson <Radisson97@gmx.de>
Subject: Re: new:mbrtoc32.3: convert from to c32
Date:   Sun, 04 Jul 2021 12:26:31 +0200
Message-ID: <8295983.X7ISPF4pOe@omega>
User-Agent: KMail/5.1.3 (Linux/4.4.0-210-generic; KDE/5.18.0; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit wide character

I would suggest two separate man pages for these functions.
Rationale:
It is rare that some code uses mbrtoc32 and c32rtomb in the same function.
(Basically, functions that do input call mbrtoc32, and functions that do
output call c32rtomb.) And the description of mbrtoc32 is a bit complex.

> Are there any important differences compared to the already-documented
> and C99-compliant mbrtowc(3) and wcrtomb(3)?  I mean, apart from the
> types of the parameters.

No for c32rtomb, but yes for mbrtoc32: mbrtowc has the special return
values (size_t)-1 and (size_t)-2, whereas mbrtoc32 also has the special
return value (size_t)-3. Although, on glibc currently this special
return value (size_t)-3 cannot occur. But IMO the man page should
mention it nevertheless, otherwise people write code that is not
future-proof.

Bruno

