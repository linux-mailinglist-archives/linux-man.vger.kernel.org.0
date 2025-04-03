Return-Path: <linux-man+bounces-2730-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 184E6A7A094
	for <lists+linux-man@lfdr.de>; Thu,  3 Apr 2025 12:01:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 664D9189678B
	for <lists+linux-man@lfdr.de>; Thu,  3 Apr 2025 10:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 184BFCA64;
	Thu,  3 Apr 2025 10:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dZfIIVRb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C35023ED76
	for <linux-man@vger.kernel.org>; Thu,  3 Apr 2025 10:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743674476; cv=none; b=bsWcjDi7mHOCsYTbYlkcerNCU6MTqey/EHEmI16kmtpPa7BE5X0kwBB+Z4vMxtBuNgOrUGEPcSqbGgGQ0a80uWsgPo54w254hQxjOR6ymxnKAvyRCLByf6nlfY9PO1AfqBf95w0Vo+z1DNAPkgAoDGU5NaYLGfPeyMg4iOjpwx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743674476; c=relaxed/simple;
	bh=DL9ZbdhnB/jYDFmFv4HP4Dwvm4RhjCuQgtJXBZQowYU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jEhUtY5Rj/bGZfME3FA0y+MnjHTVIZKP0gIl+dw67HmZI23Y8ltr5I4hTZ4oijjUAGqW3ofxaEOstMZg9wsn1C6E4nAWJbg58aBT5VibZ39FfiWesUX58jvn1fYJj4dm2TvY5K8IX98Yglv6EpGTfKeRaoJJ8zpz27PV/U3T7MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dZfIIVRb; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so1112540a12.3
        for <linux-man@vger.kernel.org>; Thu, 03 Apr 2025 03:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743674473; x=1744279273; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e6Q0FGcgO8EtGd92egueWxNi9K01ILJ7rFGNJzlxfpE=;
        b=dZfIIVRb1nDZCR3TBcuu04TZdZ4RaaDfpFi2utjaqudEMGbODi1fMEkeRCOP5jcLb5
         BQuIyMecCsKh8/FC7GjXBjeAKXxDf3gQeK5voKU/JpPgmXcUPPWrDc7RRfYWqWH41SGO
         3vCVPqG9/I9CH7w3TiM6QX3ali/JjxUmuYplPv6fJY89hTX+qi5BllyrooHSQizWLOzN
         SXnIBQ25o1RvqJZTNI3VFQ+xPuIB0HoqLxYhjSn1UxYJvdPTm/rcz5i/KK0ZEwUGLsrT
         dMz4W8tdaKeYLOUmr8TmhY70ERtZSgTRGwqTOaovcsXBZhmVeb6I/cC1gsa9Ap596se8
         AqOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743674473; x=1744279273;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e6Q0FGcgO8EtGd92egueWxNi9K01ILJ7rFGNJzlxfpE=;
        b=S0TYAyLwISB5q8QLlYZlcDXgVz5rXCVhBGGmS7vWJNiNLxjMXzJo7M6KMoCNNq9HFw
         /LSDptjA4i+FCHkVv5mAO9KYGJNXQDYvM+/YjEdfwNTymOKR+oTjI8BhLHhQBi0KWly1
         0YHCMRpVaquNf8mwPMrOJbN8/Pn8s42XiMp2s+jXyGp5LTnFqZEtXvJ5HFpU5Ah9BD7G
         /eSyRZdKP1Wf/tXi9/pOc89cF+Q1/ZtEbius8ZOMlLb7baCWJf0sIIJYlO71zSLn/Y4H
         1lYwPOAz4VuUb1t0KOpImRIK+Q8b+U6a6PJHdxVGEfXP48fuzjFFdPMzqch/Wymooto0
         fL4A==
X-Forwarded-Encrypted: i=1; AJvYcCWabzTyq3gHmKHZHGSevIUCQKDru2FZMhfKEH+ce/ylCUxlTaYRtxpgT5fwmuLXDkZ+9pPP1b9vmBs=@vger.kernel.org
X-Gm-Message-State: AOJu0YzWOeBpe+czncVnSOdQe6kKKIjBUtu/YggZMePfNfnjhG7JZzt1
	he/1RwIjc2Do2XUHAb7y5471MwuBhK9AEQD18GFEs9itFXtAACuLQ4RWffRDf/IaEnqDfGGkqK7
	QSa6YiavUtp+BREI9HWovLOJFU9w=
X-Gm-Gg: ASbGncsL4ooq6ZFg13vTGBQJnJ5iFNAO8+3gfOaM7GOE0YL6sOnDsiKya7LCotld6X8
	5ZONMXYwk/jlTV8dETykjyehgbo8XXhizejEFH5vMmKg+VQrQMdJP9l3eA+1NWTz4pjqEHTSFNM
	S63sE+3CzI1D8b1HHjZ6dPTBpkxw==
X-Google-Smtp-Source: AGHT+IFi6b50P+K/vL8uBuedo6SoQZ/tFXtyXSYaBRhR2HQUHcYzQCHsNOCsoupK5PdnmNzctZ21K6SwJmtU9+0kfi4=
X-Received: by 2002:a05:6402:3488:b0:5e5:bfab:51f with SMTP id
 4fb4d7f45d1cf-5edfb467613mr17404455a12.0.1743674472681; Thu, 03 Apr 2025
 03:01:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250331133959.1436376-1-amir73il@gmail.com> <20250331133959.1436376-2-amir73il@gmail.com>
 <rylfwmbs4prqtctgpvex7d7p3efqtxmexyzbnyjcbtyo5pqrer@33rylwxb7zes>
In-Reply-To: <rylfwmbs4prqtctgpvex7d7p3efqtxmexyzbnyjcbtyo5pqrer@33rylwxb7zes>
From: Amir Goldstein <amir73il@gmail.com>
Date: Thu, 3 Apr 2025 12:01:01 +0200
X-Gm-Features: ATxdqUGP6cQgRYOl3BP-OwNdNl0IIymxK9WyREHJs5hcPVFdGbLqIu-mkKhQnfY
Message-ID: <CAOQ4uxj3iJbGYsCZ0shGXZJQpFU6A2FnT=846361SRW0vtn_nQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] fanotify: Fixes for documentation of FAN_FS_ERROR
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 2, 2025 at 10:54=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Amir,
>
> On Mon, Mar 31, 2025 at 03:39:58PM +0200, Amir Goldstein wrote:
> > FAN_EVENT_INFO_TYPE_ERROR was missing from the list of info types.
> >
> > The order of FAN_FS_ERROR entry in the event section was rather
> > arbitrary inside the group of fid info events.
> >
> > FAN_FS_ERROR is a special event with error info, so place its entry
> > after the entries for fid info events and before the entries for
> > permission events.
> >
> > Reduce unneeded newlines in the FAN_FS_ERROR entry.
> >
> > Cc: Jan Kara <jack@suse.cz>
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> > ---
> >
> > Alejandro,
> >
> > This unrelated cleanup was plit out of the FAN_PRE_ACCESS
> > patch and I have also added some extra cleanup in preparation for
> > adding mount events.
> >
> > If you were going to re-organize the section describing the different
> > extra event info types, maybe better doing this after merging the new
> > types from v6.14: FAN_EVENT_INFO_TYPE_RANGE and FAN_EVENT_INFO_TYPE_MNT=
.
> >
> > Thanks,
> > Amir.
> >
> >  man/man2/fanotify_mark.2 | 44 +++++++++++++++++++---------------------
> >  man/man7/fanotify.7      |  7 ++++---
> >  2 files changed, 25 insertions(+), 26 deletions(-)
> >
> > diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> > index 47cafb21c..1d132fa1a 100644
> > --- a/man/man2/fanotify_mark.2
> > +++ b/man/man2/fanotify_mark.2
> > @@ -362,29 +362,6 @@ Create an event when a marked file or directory it=
self is deleted.
> >  An fanotify group that identifies filesystem objects by file handles
> >  is required.
> >  .TP
> > -.BR FAN_FS_ERROR " (since Linux 5.16, 5.15.154, and 5.10.220)"
> > -.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> > -Create an event when a filesystem error
> > -leading to inconsistent filesystem metadata is detected.
> > -An additional information record of type
> > -.B FAN_EVENT_INFO_TYPE_ERROR
> > -is returned for each event in the read buffer.
> > -An fanotify group that identifies filesystem objects by file handles
> > -is required.
> > -.IP
>
> You forgot the .IP in the moved text.
>

I wrote "Reduce unneeded newlines in the FAN_FS_ERROR entry."
The newlines seem unneeded IMO and inconsistent with other
entries.

But it's not a big deal.

Thanks,
Amir.

