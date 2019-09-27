Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2BE2BFF1C
	for <lists+linux-man@lfdr.de>; Fri, 27 Sep 2019 08:26:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725802AbfI0G0G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Sep 2019 02:26:06 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:41032 "EHLO
        mail-io1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725769AbfI0G0G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Sep 2019 02:26:06 -0400
Received: by mail-io1-f54.google.com with SMTP id r26so13354770ioh.8
        for <linux-man@vger.kernel.org>; Thu, 26 Sep 2019 23:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=hh5roJkiMMf7XRcdZG94fFfw4/hvdtJGzrD1nc9V+ik=;
        b=VfOjb7XOEl6Kd12frndE+N2LwNgYu0NLpmiNstBKSyu0ljMRuEn9pRvSJ4XfXIqJlr
         0thhV12S7f8H7mPuJ62yiVTKr5JxMZxt6x9V2sbqwDrPzZSg6Y5t25DpUkcMtHk7HsDZ
         u7TA867Kjuwe0jNr+NcQ34GSZcPGkJk8PgVXLl2J3A24YKrTWqBa3E2X/ZiRD5g0VHav
         G0RlBRrfTntY1IhvTJ/A8Wxld66e5ZJ3Ur41xEzyuBeBn+vfriD/WUFUIGVKm9O//i/a
         1VeVJ48vmzYtV4a4xaUDsLq+tXe/DFs5B3A2EXroImiPUdODWYjq6PlOLREOt46/8pLt
         Je2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=hh5roJkiMMf7XRcdZG94fFfw4/hvdtJGzrD1nc9V+ik=;
        b=rLhXfFucEryRkZRq+1oyV4J5hM9Tu2e7t+IWbdiPAzq7FWx6RpPoeK75Owia5Q6mWg
         M5YymAAVOkAVEKhkrfc7YFmTf3Oo98fJ0bzlSLGPKmj+MwOofPwpfcj8usjmnrFqz9y+
         //eHJ9CBG6+zZtofWge3tIsb5D8C79tjoNR1/FpRb4r7jYVWfHkYUnBktn2v9sN8lXXB
         08nv1eY5GMMltP6MZkpBPzVYuF2yp6XBiszleuwn6KB1W2+LQnu17l482WKBp9eQM0nT
         WRMZn0TegKkrkEogkNYnWDVFpOnaPJQz5yoVL/PwZdwOkfu52QIv1xVDCWctw+KYO5Y0
         EB8A==
X-Gm-Message-State: APjAAAXJQq+b0Z39r9hU/6egEkoFQ3/OLzq/UXv4ict0VPsO8jfC2Pbx
        JuztEkaHGYfcUM8OnjwqCKwuEgSilz/DnvnYmrxOaMdYM1o=
X-Google-Smtp-Source: APXvYqxnFze3nz5L6hPFN7Vbbr3Uoz5ul5z/oZ+Qoxy7xbYnuWmZ7bVhmJZd+gpMBIHYOjm3ujac7o/HpdndMw4i6u8=
X-Received: by 2002:a92:844b:: with SMTP id l72mr3038755ild.275.1569565565206;
 Thu, 26 Sep 2019 23:26:05 -0700 (PDT)
MIME-Version: 1.0
From:   nilsocket <nilsocket@gmail.com>
Date:   Fri, 27 Sep 2019 11:56:17 +0530
Message-ID: <CAGkTAxsV0zS_E64criQM-WtPKpSyW2PL=+fjACvnx2=m7piwXg@mail.gmail.com>
Subject: 
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In http://man7.org/linux/man-pages/man2/epoll_pwait.2.html#NOTES ,
through out this section `epoll_wait()` is used. but only once
`epoll_pwait()` is used, I think it's a typo mistake.

Current:
While one thread is blocked in a call to epoll_pwait()

Expected Change:
While one thread is blocked in a call to epoll_wait()

-- 
Thank you
