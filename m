Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CEB9510B177
	for <lists+linux-man@lfdr.de>; Wed, 27 Nov 2019 15:35:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726591AbfK0OfG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Nov 2019 09:35:06 -0500
Received: from mail-lf1-f52.google.com ([209.85.167.52]:46492 "EHLO
        mail-lf1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726514AbfK0OfF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Nov 2019 09:35:05 -0500
Received: by mail-lf1-f52.google.com with SMTP id a17so17321431lfi.13
        for <linux-man@vger.kernel.org>; Wed, 27 Nov 2019 06:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sFsInOFYZwFsB2BhyUofOeoIKUu1OjwK6xYpERGc82s=;
        b=BOLGQqrCHpgFbRh2Jn8Hz+xCh/3kW9pQbGz2QS2R/+SD41YDcZ246fgneJS2KKDGB4
         1tuFdXf7s43c29HaX4GbSgUYgwKIhpX6PIRJS5TTtDQ6lebvHfwoy25VXiEu+JKM+KYC
         YHBzQKRDpITq0LawcNNlJCg3FPpzsVkvoAnFaBBhJ/VSZ7gJGBwdrWqgpPJBY7l0H7ab
         Qokmkg0a3DcnJBd08GUcyZrRcyJdKbPOiLH8lkBRHJZYjWQh9QE9r0hXqLVOZ5d5uwCU
         uC+K6rGh85tt/lUUrsFQquhnvXTV9HDxwqs1eruw2VnCBntVD8lwvaD8fFE5RaYC9gNE
         WgDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sFsInOFYZwFsB2BhyUofOeoIKUu1OjwK6xYpERGc82s=;
        b=TE+XUQehpd7jNTvsUeAR9TJDbMCflWWkt9RZqWRNQjlMaQwEDTkkV68TtewGBugrgi
         m5Xb85UeKZbSrbnckMtWK6Z65g38p/zwxfZs34Ey1sMy16gHYyxgll93qjygPqdF60wf
         0jTIXeepZzNbwonrbZh7+k8yk7DlNXWGcsMeNsV0VgLKXk9xir33rDHHXzExqeXslMNb
         uPxLHexqCr258OYtl+17sapW5kQ9RMS5cpNOCsBJmrTGxW9OV/SbSUF2LIZMGwmEUmbt
         YFTnCGO6rc7DEFc+N1bIvL7ECX6lnWjj8/EfFuhJ1TKEjUzzMiMNWDdyp6ZIgKJ5E6oE
         Y2hA==
X-Gm-Message-State: APjAAAUNumfPeoMNbqICugtEb+vXJsQbZg7jBT93Jp9URNC/4a5Ru4ZY
        G3F7haeCh58O/h+PPcI8N9W4ufTpvqOhPyzrAWciLkUD
X-Google-Smtp-Source: APXvYqz03EMgkAr4A5KWv82Qod6UHMFr6GdLMyTy/ea7Sya1zeJJlGRFNru4GbEIcjTbqqmK+iDV3Fysb3xCx7QcTTI=
X-Received: by 2002:ac2:46ec:: with SMTP id q12mr24360728lfo.56.1574865303350;
 Wed, 27 Nov 2019 06:35:03 -0800 (PST)
MIME-Version: 1.0
From:   Lelanthran Manickum <lelanthran@gmail.com>
Date:   Wed, 27 Nov 2019 16:34:52 +0200
Message-ID: <CAA+p7YbEJTxyoBHVqjbG66O4PiAiwF8HtnBYj9hnbfzuk2BVzQ@mail.gmail.com>
Subject: Manpages for C11 thrd_* functions (threads.h)
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

I'm unable to find manpages for the C11 thread functions.

If anyone is not working on this I have a little time I can devote to
writing these pages using the libc docs as a starting point.

Warm Regards
Lee
